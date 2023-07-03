import 'package:flutter/material.dart';
import 'package:news_app_api/helper/news.dart';
import 'package:news_app_api/helper/widgets.dart';

class CategoryNews extends StatefulWidget {
  final String newsCategory;

  CategoryNews({this.newsCategory});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  var newslist;
  bool _loading = true;

  @override
  void initState() {
    getNews();
    // TODO: implement initState
    super.initState();
  }

  void getNews() async {
    // Create an instance of the NewsForCategorie class
    NewsForCategorie news = NewsForCategorie();

    // Call the method to fetch news for the specified category
    await news.getNewsForCategory(widget.newsCategory);

    // Store the fetched news in the newslist variable
    newslist = news.news;

    // Set the loading state to false to indicate that news has been loaded
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Custom app bar title
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "NEWS-",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            Text(
              "X",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: <Widget>[
          // Hidden share button
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.share),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                child: Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ListView.builder(
                    itemCount: newslist.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      // Create a NewsTile widget for each news item
                      return NewsTile(
                        imgUrl: newslist[index].urlToImage ?? "",
                        title: newslist[index].title ?? "",
                        desc: newslist[index].description ?? "",
                        content: newslist[index].content ?? "",
                        posturl: newslist[index].articleUrl ?? "",
                      );
                    },
                  ),
                ),
              ),
            ),
    );
  }
}

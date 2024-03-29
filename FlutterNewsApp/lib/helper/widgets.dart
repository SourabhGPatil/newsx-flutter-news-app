import 'package:flutter/material.dart';
import 'package:news_app_api/views/article_view.dart';

// Widget for the custom app bar
Widget MyAppBar(){
  return AppBar(
    //App's Name on the App Bar
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
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}


// Custom news tile widget
class NewsTile extends StatelessWidget {
  final String imgUrl, title, desc, content, posturl;

  NewsTile({this.imgUrl, this.desc, this.title, this.content, @required this.posturl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Navigating to the ArticleView screen on tap
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => ArticleView(
              postUrl: posturl,
            )
          )
        );
      },
      child: Container(
          margin: EdgeInsets.only(bottom: 24),
          width: MediaQuery.of(context).size.width,
          child: Container(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(6),bottomLeft:  Radius.circular(6))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        imgUrl,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(height: 12,),
                  Text(
                    title,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    desc,
                    maxLines: 2,
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

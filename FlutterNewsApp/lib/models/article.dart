class Article {
  String title;
  String author;
  String description;
  String urlToImage;
  DateTime publishedAt;
  String content;
  String articleUrl;

  // Constructor for the Article class
  Article({
    this.title,             // Title of the article
    this.description,       // Description of the article
    this.author,            // Author of the article
    this.content,           // Content of the article
    this.publishedAt,       // Published date and time of the article
    this.urlToImage,        // URL to the image associated with the article
    this.articleUrl,        // URL to the full article
  });
}

class Article{
  String title;
  String image;
  String link;

  Article({
    this.title,
    this.image,
    this.link,
  });

  Article.fromJson(Map<String, dynamic> json){
    title = json['title'];
    image = json['image'];
    link = json['link'];
  }

}


class ArticleResponse{
  List<Article> articles;
  ArticleResponse({this.articles});
  ArticleResponse.fromJson(dynamic json){
    articles = new List<Article>();
    json.forEach((v) {
      articles.add(new Article.fromJson(v));
    });
  }
}
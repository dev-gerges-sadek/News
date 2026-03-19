class ArticleModel {
  final String title;
  final String description;
  final String urlToImage;
  final String url;

  ArticleModel({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.url,
  });


  factory ArticleModel.fromMap(Map<String, dynamic> map) {
    return ArticleModel(
      title: map['title'] ?? "no title",
      description: map['description'] ?? "no description",
      urlToImage: map['urlToImage'] ?? '',
      url: map['url'] ?? "no url",
    );
  }

  toJson() {
    return {
      'title': title,
      'description': description,
      'urlToImage': urlToImage,
      'url': url,
    };
  }
}

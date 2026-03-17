import 'package:dio/dio.dart';
import 'package:news_app2/Models/articale_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=d4a93323ab804912bcd4beb75e3d467f',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleModels = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          title: article['title'] ?? "no title",
          description: article['description'] ?? "no description",
          urlToImage:
              article['urlToImage'] ?? "https://via.placeholder.com/150",
          publishedAt: article['publishedAt'] ?? "no date",
          content: article['content'] ?? "no content",
        );

        articleModels.add(articleModel);
      }
      return articleModels;
    } catch (e) {
      rethrow;
    }
  }
}

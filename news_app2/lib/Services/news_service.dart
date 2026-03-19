import 'package:dio/dio.dart';
import 'package:news_app2/Models/articale_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=d4a93323ab804912bcd4beb75e3d467f&category=$category',
      );

      List<dynamic> articles = response.data['articles'];

      List<ArticleModel> articleList = articles
          .map((article) => ArticleModel.fromMap(article))
          .toList();

      return articleList;
    } catch (e) {
      throw Exception('Failed to load news: $e');
    }
  }
}
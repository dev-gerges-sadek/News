// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:news_app2/Models/articale_model.dart';
import 'package:news_app2/Widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
   final List<ArticleModel> articles ;
   const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NewsTile(article: articles[index]),
              childCount: articles.length,
            ),
          );
  }
}

/* import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/Models/articale_model.dart';
import 'package:news_app2/Services/news_service.dart';
import 'package:news_app2/Widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewsService(Dio()).getNews();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NewsTile(article: articles[index]),
              childCount: articles.length,
            ),
          );
  }
}
 */
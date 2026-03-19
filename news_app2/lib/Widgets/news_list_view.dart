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

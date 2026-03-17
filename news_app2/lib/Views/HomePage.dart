// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:news_app2/Widgets/categories_List_View.dart';
import 'package:news_app2/Widgets/news_list_view.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: CustomScrollView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 90, child: GategoriesListView()),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            NewsListView(articles: [],),
          ],
        ),
      ),
    );
  }
}

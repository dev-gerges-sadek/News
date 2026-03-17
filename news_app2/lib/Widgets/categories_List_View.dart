// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_app2/Models/categories_model.dart';
import 'package:news_app2/Widgets/category_card.dart';

class GategoriesListView extends StatelessWidget {
  GategoriesListView({super.key});
  final List<CategoriesModel> categories = [
    CategoriesModel(
      categoryName: "Entertaiment",
      categoryimage: "assets/entertaiment.avif",
    ),
    CategoriesModel(
      categoryName: "Business",
      categoryimage: "assets/business.avif",
    ),

    CategoriesModel(
      categoryName: "Health",
      categoryimage: "assets/health.avif",
    ),
    CategoriesModel(
      categoryName: "Science",
      categoryimage: "assets/science.avif",
    ),
    CategoriesModel(
      categoryName: "Sports",
      categoryimage: "assets/sports.avif",
    ),
    CategoriesModel(
      categoryName: "Technology",
      categoryimage: "assets/technology.jpeg",
    ),
    CategoriesModel(
      categoryName: "General",
      categoryimage: "assets/general.avif",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}

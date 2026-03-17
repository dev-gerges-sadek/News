import 'package:flutter/material.dart';
import 'package:news_app2/Models/categories_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoriesModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(category.categoryimage),
            fit: BoxFit.cover,
          ),
          color: Colors.orange,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

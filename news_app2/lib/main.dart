import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/Services/news_service.dart';
import 'package:news_app2/Views/HomePage.dart';

void main() {
  NewsService(Dio()).getNews;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Homepage(),
    );
  }
}

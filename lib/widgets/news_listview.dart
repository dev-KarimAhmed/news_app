import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';

import '../models/articles_model.dart';
import '../services/news_service.dart';



class NewsListView extends StatelessWidget {
  List<ArticlesModel> articles;

  NewsListView({super.key , required this.articles});
 
  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: NewsTile(
                  article: articles[index],
                ),
              ),
          childCount: 10),
    );
  }
}

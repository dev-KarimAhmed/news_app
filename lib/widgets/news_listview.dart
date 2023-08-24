import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';

import '../models/articles_model.dart';
import '../services/news_service.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticlesModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    getNews();
    isLoading = false;
    // TODO: implement initState
    super.initState();
  }

  Future<void> getNews() async {
    articles = await NewsService(dio: Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),),): SliverList(
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

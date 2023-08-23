import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=sports&apiKey=6ad0d120d5ae40559b9f28fba2182f31&language=ar');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articels = jsonData['articles'];
    List<ArticlesModel> articlesList = [];
    for (var article in articels) {
      ArticlesModel articleModel = ArticlesModel(
        image: article["urlToImage"],
        title: article["title"],
        subTitle: article["description"],
      );
      articlesList.add(articleModel);
    }
    print(articlesList);
  }
}

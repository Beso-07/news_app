import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsdata.io/api/1/latest?apikey=pub_749772726c793a4b45432abf79076421eb3c6&country=eg&category=$category',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['image_url'],
          title: article['title'],
          subTitle: article['description'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}

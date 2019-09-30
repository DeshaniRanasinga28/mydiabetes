import 'dart:async';
import '../models/article_response.dart';
import 'provider/article_api_provider.dart';

class Repository{
  final articleApoProvider = ArticleApiProvider();

  Future<ArticleResponse> fetchArticleList () => articleApoProvider.fetchArticleList();
}
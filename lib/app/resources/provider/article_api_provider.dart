import 'dart:async';
import 'dart:convert';
import '../../models/article_response.dart';
import 'package:http/http.dart' show Client;

class ArticleApiProvider {
  Client client = Client();

  Future<ArticleResponse> fetchArticleList() async {
    final response = await client.get("https://mydiabetesbck.iconicto.com/articles/");
    if (response.statusCode == 200) {
      return ArticleResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Fail to load post');
    }
  }
}


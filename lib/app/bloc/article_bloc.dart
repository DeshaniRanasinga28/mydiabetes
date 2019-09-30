import '../resources/article_repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/article_response.dart';

class ArticleBloc{
  final _repository = Repository();

  final _articlesFetcher = PublishSubject<ArticleResponse>();

  Observable<ArticleResponse> get allArticles => _articlesFetcher.stream;

  fetchArticles() async{
    ArticleResponse itemModel = await _repository.fetchArticleList();
    _articlesFetcher.sink.add(itemModel);
  }

//  dispose(){
//    _articlesFetcher.close();
//  }
}

final bloc = ArticleBloc();
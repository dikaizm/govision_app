import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/education/model/article2.dart';
import 'package:govision/feature/education/state/article2_state.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/http/api_response.dart';
import 'package:govision/shared/http/app_exception.dart';

abstract class Article2RepositoryProtocol {
  Future<Article2State> fetchArticle(int size);
  Future<Article2DetailState> fetchArticleDetail(String id);
  Future<List<Article2>> fetchArticleAsModel(int size);
}

final article2RepositoryProvider = Provider<Article2Repository>((ref) {
  return Article2Repository(ref);
});

class Article2Repository implements Article2RepositoryProtocol {
  Article2Repository(this._ref);

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<Article2State> fetchArticle(int size) async {
    final response = await _api.get('/articles?size=$size');

    response.when(
        success: (success) {},
        error: (error) {
          return Article2State.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;
      try {
        final _articles = articles2FromJson(value as List<dynamic>);

        if (_articles.isEmpty) {
          return const Article2State.empty();
        }

        return Article2State.loaded(_articles);
      } catch (e) {
        return Article2State.error(AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return Article2State.error(response.exception);
    } else {
      return const Article2State.loading();
    }
  }

  @override
  Future<List<Article2>> fetchArticleAsModel(int size) async {
    final response = await _api.get('/articles?size=$size');

    List<Article2> _articles = [];

    if (response is APISuccess) {
      final value = response.value;
      _articles = articles2FromJson(value as List<dynamic>);
    }

    return _articles;
  }

  @override
  Future<Article2DetailState> fetchArticleDetail(String id) async {
    final response = await _api.get('/articles/$id');

    response.when(
        success: (success) {},
        error: (error) {
          return Article2DetailState.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;
      try {
        if (value == null) {
          return const Article2DetailState.empty();
        }

        final _article = Article2Detail.fromJson(value as Map<String, dynamic>);

        return Article2DetailState.loaded(_article);
      } catch (e) {
        return Article2DetailState.error(
            AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return Article2DetailState.error(response.exception);
    } else {
      return const Article2DetailState.loading();
    }
  }
}

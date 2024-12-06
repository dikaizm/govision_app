import 'package:govision/feature/education/repository/article_repository.dart';
import 'package:govision/feature/education/state/article2_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article2_provider.g.dart';

@riverpod
class Article2Notifier extends _$Article2Notifier {
  late final Article2Repository _repository =
      ref.read(article2RepositoryProvider);

  @override
  Article2State build() {
    fetchArticles();
    return const Article2State.loading();
  }

  void fetchArticles() {
    _repository.fetchArticle().then((response) {
      state = response;
    });
  }
}

@riverpod
class Article2DetailNotifier extends _$Article2DetailNotifier {
  late final Article2Repository _repository =
      ref.read(article2RepositoryProvider);

  @override
  Article2DetailState build() {
    return const Article2DetailState.loading();
  }

  void fetchArticleDetail(String id) {
    _repository.fetchArticleDetail(id).then((response) {
      state = response;
    });
  }
}

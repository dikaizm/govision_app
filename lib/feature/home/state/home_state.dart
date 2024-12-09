import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/education/model/article2.dart';
import 'package:govision/feature/home/model/hero.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded(String data) = _Loaded;
  const factory HomeState.error(String message) = _Error;
}

@freezed
class HeroState with _$HeroState {
  const factory HeroState.loading() = _HeroLoading;
  const factory HeroState.loaded(Hero data) = _HeroLoaded;
  const factory HeroState.error(AppException message) = _HeroError;
  const factory HeroState.empty() = _HeroEmpty;
}

@freezed
class HeroArticleState with _$HeroArticleState {
  const factory HeroArticleState.loading() = _HeroArticleLoading;
  const factory HeroArticleState.loaded(List<Article2> data) =
      _HeroArticleLoaded;
  const factory HeroArticleState.error(AppException message) =
      _HeroArticleError;
  const factory HeroArticleState.empty() = _HeroArticleEmpty;
}

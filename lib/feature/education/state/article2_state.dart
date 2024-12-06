import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/education/model/article2.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'article2_state.freezed.dart';

@freezed
class Article2State with _$Article2State {
  const factory Article2State.loading() = _Loading;
  const factory Article2State.loaded(List<Article2> data) = _Loaded;
  const factory Article2State.error(AppException message) = _Error;
  const factory Article2State.empty() = _Empty;
}

@freezed
class Article2DetailState with _$Article2DetailState {
  const factory Article2DetailState.loading() = _LoadingDetail;
  const factory Article2DetailState.loaded(Article2Detail data) = _LoadedDetail;
  const factory Article2DetailState.error(AppException message) = _ErrorDetail;
  const factory Article2DetailState.empty() = _EmptyDetail;
}

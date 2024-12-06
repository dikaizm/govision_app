import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/fundus_record/model/fundus.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'fundus_state.freezed.dart';

@freezed
class FundusHistoryState with _$FundusHistoryState {
  const factory FundusHistoryState.loading() = _FundusHistoryLoading;
  const factory FundusHistoryState.loaded(List<Fundus> data) =
      _FundusHistoryLoaded;
  const factory FundusHistoryState.error(AppException error) =
      _FundusHistoryError;
  const factory FundusHistoryState.empty() = _FundusHistoryEmpty;
}

@freezed
class FundusDetailState with _$FundusDetailState {
  const factory FundusDetailState.loading() = _FundusDetailLoading;
  const factory FundusDetailState.loaded(Fundus data) = _FundusDetailLoaded;
  const factory FundusDetailState.error(AppException error) =
      _FundusDetailError;
  const factory FundusDetailState.empty() = _FundusDetailEmpty;
}

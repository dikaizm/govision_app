import 'package:govision/feature/fundus_record/model/fundus.dart';
import 'package:govision/feature/fundus_record/repository/fundus_repository.dart';
import 'package:govision/feature/fundus_record/state/fundus_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fundus_provider.g.dart';

@riverpod
class FundusHistoryNotifier extends _$FundusHistoryNotifier {
  late final FundusHistoryRepository _repository =
      ref.read(fundusHistoryRepositoryProvider);

  @override
  FundusHistoryState build() {
    fetchFundusHistory();
    return const FundusHistoryState.loading();
  }

  void fetchFundusHistory() {
    _repository.fetchFundusHistory().then((response) {
      state = response;
    });
  }

  void deleteFundus(int id) {
    _repository.deleteFundus(id).then((response) {
      state = response;
    });
  }

  void refresh(void Function(FundusHistoryState state) callback) {
    callback(state);
  }

  void updateVerifyFundus(Fundus fundus) {
    _repository.updateVerifyFundus(fundus).then((response) {
      state = response;
    });
  }
}

@riverpod
class FundusDetailNotifier extends _$FundusDetailNotifier {
  late final FundusHistoryRepository _repository =
      ref.read(fundusHistoryRepositoryProvider);

  @override
  FundusDetailState build() {
    return const FundusDetailState.loading();
  }

  void fetchFundusDetail(int id) {
    _repository.fetchFundusDetail(id).then((response) {
      state = response;
    });
  }

  void requestVerifyFundus(int id) {
    _repository.requestVerifyFundus(id).then((response) {
      state = response;
    });
  }
}

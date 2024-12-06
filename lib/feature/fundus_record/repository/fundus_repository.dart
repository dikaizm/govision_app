import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/fundus_record/model/fundus.dart';
import 'package:govision/feature/fundus_record/provider/fundus_provider.dart';
import 'package:govision/feature/fundus_record/state/fundus_state.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/http/api_response.dart';
import 'package:govision/shared/http/app_exception.dart';

abstract class FundusHistoryRepositoryProtocol {
  Future<FundusHistoryState> fetchFundusHistory();
  Future<FundusHistoryState> deleteFundus(int id);

  Future<FundusDetailState> fetchFundusDetail(int id);
}

final fundusHistoryRepositoryProvider = Provider(FundusHistoryRepository.new);

class FundusHistoryRepository implements FundusHistoryRepositoryProtocol {
  FundusHistoryRepository(this._ref);

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<FundusHistoryState> fetchFundusHistory() async {
    final response = await _api.get('/fundus');

    response.when(
        success: (success) {},
        error: (error) {
          return FundusHistoryState.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;

      try {
        final _fundusHistory = fundusesFromJson(value as List<dynamic>);

        if (_fundusHistory.isEmpty) {
          return const FundusHistoryState.empty();
        }

        return FundusHistoryState.loaded(_fundusHistory);
      } catch (e) {
        return FundusHistoryState.error(
            AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return FundusHistoryState.error(response.exception);
    } else {
      return const FundusHistoryState.loading();
    }
  }

  @override
  Future<FundusHistoryState> deleteFundus(int id) async {
    final response = await _api.delete('/fundus/$id');

    response.when(
        success: (success) {},
        error: (error) {
          return FundusHistoryState.error(error);
        });

    if (response is APISuccess) {
      try {
        List<Fundus> updatedFunduses = [];

        final notifier = _ref.read(fundusHistoryNotifierProvider.notifier);
        notifier.refresh((state) {
          state.maybeWhen(
              loaded: (funduses) {
                updatedFunduses =
                    funduses.where((fundus) => fundus.id != id).toList();
              },
              orElse: () {});
        });

        return FundusHistoryState.loaded(updatedFunduses);
      } catch (e) {
        return FundusHistoryState.error(
            AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return FundusHistoryState.error(response.exception);
    } else {
      return const FundusHistoryState.loading();
    }
  }

  @override
  Future<FundusDetailState> fetchFundusDetail(int id) async {
    final response = await _api.get('/fundus/$id');

    response.when(
        success: (success) {},
        error: (error) {
          return FundusDetailState.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;

      try {
        final _fundusDetail = Fundus.fromJson(value as Map<String, dynamic>);

        if (_fundusDetail == null) {
          return const FundusDetailState.empty();
        }

        return FundusDetailState.loaded(_fundusDetail);
      } catch (e) {
        return FundusDetailState.error(
            AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return FundusDetailState.error(response.exception);
    } else {
      return const FundusDetailState.loading();
    }
  }
}
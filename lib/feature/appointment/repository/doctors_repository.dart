import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/appointment/model/doctor_preview.dart';
import 'package:govision/feature/appointment/state/doctors_state.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/http/api_response.dart';
import 'package:govision/shared/http/app_exception.dart';

abstract class DoctorsRepositoryProtocol {
  Future<DoctorsState> fetchDoctors();
}

final doctorsRepositoryProvider = Provider(DoctorsRepository.new);

class DoctorsRepository implements DoctorsRepositoryProtocol {
  DoctorsRepository(this._ref);

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<DoctorsState> fetchDoctors() async {
    final response = await _api.get('/user/doctors');

    response.when(
        success: (success) {},
        error: (error) {
          return DoctorsState.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;
      try {
        final _doctors = doctorPreviewsFromJson(value as List<dynamic>);

        return DoctorsState.loaded(_doctors);
      } catch (e) {
        return DoctorsState.error(AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return DoctorsState.error(response.exception);
    } else {
      return const DoctorsState.loading();
    }
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/doctor_profile/model/doctor_profile.dart';
import 'package:govision/feature/doctor_profile/state/doctor_profile_state.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/http/api_response.dart';
import 'package:govision/shared/http/app_exception.dart';

abstract class DoctorProfileRepositoryProtocol {
  Future<DoctorProfileState> fetchProfile(String userId);
  Future<BookScheduleState> bookSchedule(BookScheduleParams params);
}

final doctorProfileRepositoryProvider = Provider(DoctorProfileRepository.new);

class DoctorProfileRepository implements DoctorProfileRepositoryProtocol {
  DoctorProfileRepository(this._ref);

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<DoctorProfileState> fetchProfile(String userId) async {
    final response = await _api.get('/user/doctors/$userId');

    response.when(
        success: (success) {},
        error: (error) {
          return DoctorProfileState.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;
      try {
        final _profile = DoctorProfile.fromJson(value as Map<String, dynamic>);

        return DoctorProfileState.loaded(_profile);
      } catch (e) {
        return DoctorProfileState.error(
            AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return DoctorProfileState.error(response.exception);
    } else {
      return const DoctorProfileState.loading();
    }
  }

  @override
  Future<BookScheduleState> bookSchedule(BookScheduleParams params) async {
    final response = await _api.post('/appointments', params.toJson());

    response.when(
        success: (success) {},
        error: (error) {
          return BookScheduleState.error(error);
        });

    if (response is APISuccess) {
      try {
        return const BookScheduleState.loaded();
      } catch (e) {
        return BookScheduleState.error(
            AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return BookScheduleState.error(response.exception);
    } else {
      return const BookScheduleState.loading();
    }
  }
}

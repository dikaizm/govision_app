import 'package:govision/feature/doctor_profile/model/doctor_profile.dart';
import 'package:govision/feature/doctor_profile/repository/doctor_profile_repository.dart';
import 'package:govision/feature/doctor_profile/state/doctor_profile_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'doctor_profile_provider.g.dart';

@riverpod
class DoctorProfileNotifier extends _$DoctorProfileNotifier {
  late final DoctorProfileRepository _repository =
      ref.read(doctorProfileRepositoryProvider);

  @override
  DoctorProfileState build() {
    return const DoctorProfileState.loading();
  }

  void fetchProfile(String userId) {
    _repository.fetchProfile(userId).then((response) {
      state = response;
    });
  }
}

import 'package:govision/feature/appointment/repository/doctors_repository.dart';
import 'package:govision/feature/appointment/state/doctors_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'doctors_provider.g.dart';

@riverpod
class DoctorsNotifier extends _$DoctorsNotifier {
  late final DoctorsRepository _repository =
      ref.read(doctorsRepositoryProvider);

  @override
  DoctorsState build() {
    _fetchDoctors();
    return const DoctorsState.loading();
  }

  void _fetchDoctors() {
    _repository.fetchDoctors().then((response) {
      state = response;
    });
  }
}

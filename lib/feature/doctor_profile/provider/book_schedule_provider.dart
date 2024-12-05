import 'package:govision/feature/doctor_profile/model/doctor_profile.dart';
import 'package:govision/feature/doctor_profile/repository/doctor_profile_repository.dart';
import 'package:govision/feature/doctor_profile/state/doctor_profile_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_schedule_provider.g.dart';

@riverpod
class BookScheduleNotifier extends _$BookScheduleNotifier {
  late final DoctorProfileRepository _repository =
      ref.read(doctorProfileRepositoryProvider);

  @override
  BookScheduleState build() {
    return const BookScheduleState.loading();
  }

  void bookSchedule(BookScheduleParams params) {
    _repository.bookSchedule(params).then((response) {
      state = response;
    });
  }
}

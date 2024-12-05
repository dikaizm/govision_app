import 'package:govision/feature/doctor_profile/repository/time_slot_repository.dart';
import 'package:govision/feature/doctor_profile/state/time_slot_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'time_slot_provider.g.dart';

@riverpod
class TimeSlotNotifier extends _$TimeSlotNotifier {
  late final TimeSlotRepository _repository =
      ref.read(timeSlotRepositoryProvider);

  @override
  TimeSlotState build() {
    return const TimeSlotState.loading();
  }

  void fetchTimeSlots(String userId, DateTime date) {
    _repository.fetchTimeSlots(userId, date).then((response) {
      state = response;
    });
  }
}

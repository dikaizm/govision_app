import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/doctor_profile/model/time_slot.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'time_slot_state.freezed.dart';

@freezed
class TimeSlotState with _$TimeSlotState {
  const factory TimeSlotState.loading() = _Loading;
  const factory TimeSlotState.loaded(List<TimeSlot> data) = _Loaded;
  const factory TimeSlotState.error(AppException error) = _Error;
  const factory TimeSlotState.empty() = _Empty;
}

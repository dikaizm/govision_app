import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_slot.freezed.dart';
part 'time_slot.g.dart';

List<TimeSlot> timeSlotsFromJson(List<dynamic> data) => List<TimeSlot>.from(
    data.map((x) => TimeSlot.fromJson(x as Map<String, dynamic>)));

@freezed
class TimeSlot with _$TimeSlot {
  const factory TimeSlot({
    required int id,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    @JsonKey(name: 'is_booked') required bool isBooked,
  }) = _TimeSlot;

  factory TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotFromJson(json);
}

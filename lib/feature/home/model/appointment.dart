import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

List<Appointment> appointmentsFromJson(List<dynamic> data) =>
    List<Appointment>.from(
        data.map((x) => Appointment.fromJson(x as Map<String, dynamic>)));

@freezed
class Appointment with _$Appointment {
  const Appointment._();

  const factory Appointment({
    required int id,
    @JsonKey(name: 'doctor_user_id') required String doctorUserId,
    @JsonKey(name: 'doctor_name') required String doctorName,
    @JsonKey(name: 'doctor_specialization')
    required String doctorSpecialization,
    @JsonKey(name: 'doctor_photo') required String doctorPhoto,
    required DateTime date,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    required String location,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}

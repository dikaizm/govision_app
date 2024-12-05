import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/home/model/appointment.dart';

part 'appointment_state.freezed.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.loading() = _Loading;
  const factory AppointmentState.loaded(List<Appointment> data) = _Loaded;
  const factory AppointmentState.error(String message) = _Error;
}

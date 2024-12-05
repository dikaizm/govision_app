import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/home/model/appointment.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'appointments_state.freezed.dart';

@freezed
class AppointmentsState with _$AppointmentsState {
  const factory AppointmentsState.loading() = _Loading;
  const factory AppointmentsState.loaded(List<Appointment> data) = _Loaded;
  const factory AppointmentsState.error(AppException error) = _Error;
  const factory AppointmentsState.empty() = _Empty;
}

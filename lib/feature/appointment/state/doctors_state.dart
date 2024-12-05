import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/appointment/model/doctor_preview.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'doctors_state.freezed.dart';

@freezed
class DoctorsState with _$DoctorsState {
  const factory DoctorsState.loading() = _Loading;

  const factory DoctorsState.loaded(List<DoctorPreview> doctors) = _Loaded;

  const factory DoctorsState.error(AppException error) = _Error;
}

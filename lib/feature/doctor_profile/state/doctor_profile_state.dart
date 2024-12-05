import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/doctor_profile/model/doctor_profile.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'doctor_profile_state.freezed.dart';

@freezed
class DoctorProfileState with _$DoctorProfileState {
  const factory DoctorProfileState.loading() = _Loading;
  const factory DoctorProfileState.loaded(DoctorProfile data) = _Loaded;
  const factory DoctorProfileState.error(AppException error) = _Error;
}

@freezed
class BookScheduleState with _$BookScheduleState {
  const factory BookScheduleState.loading() = _LoadingBook;
  const factory BookScheduleState.loaded() = _LoadedBook;
  const factory BookScheduleState.error(AppException error) = _ErrorBook;
}

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_profile.freezed.dart';
part 'doctor_profile.g.dart';

@freezed
class DoctorProfile with _$DoctorProfile {
  const DoctorProfile._();

  const factory DoctorProfile({
    @JsonKey(name: 'user_id') required String userId,
    required String name,
    @JsonKey(name: 'str_no') required String strNo,
    String? photo,
    required String institution,
    required String specialization,
    required String city,
    required String province,
    required double rating,
    @JsonKey(name: 'total_patient') required int totalPatient,
    @JsonKey(name: 'work_years') required int workYears,
    @JsonKey(name: 'bio_desc') required String bioDesc,
    required List<Experience> experiences,
    required List<Education> educations,
    required List<Schedule> schedules,
  }) = _DoctorProfile;

  factory DoctorProfile.fromJson(Map<String, dynamic> json) =>
      _$DoctorProfileFromJson(json);
}

@freezed
class Experience with _$Experience {
  const factory Experience({
    required String institution,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
  }) = _Experience;

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);
}

@freezed
class Education with _$Education {
  const factory Education({
    required String university,
    required String major,
    @JsonKey(name: 'start_year') required int startYear,
    @JsonKey(name: 'end_year') required int endYear,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required DateTime date,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
class BookScheduleParams with _$BookScheduleParams {
  const factory BookScheduleParams({
    @JsonKey(name: 'doctor_user_id') required String doctorUserId,
    required String date,
    @JsonKey(name: 'time_slot_id') required int timeSlotId,
  }) = _BookScheduleParams;

  factory BookScheduleParams.fromJson(Map<String, dynamic> json) =>
      _$BookScheduleParamsFromJson(json);
}

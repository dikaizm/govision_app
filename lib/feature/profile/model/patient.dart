import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
class PatientProfile with _$PatientProfile {
  const factory PatientProfile({
    @JsonKey(name: 'diabetes_history') required bool diabetesHistory,
    @JsonKey(name: 'diabetes_type') String? diabetesType,
    @JsonKey(name: 'diagnosis_date') String? diagnosisDate,
  }) = _PatientProfile;

  factory PatientProfile.fromJson(Map<String, dynamic> json) =>
      _$PatientProfileFromJson(json);
}

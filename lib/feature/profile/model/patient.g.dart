// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientProfileImpl _$$PatientProfileImplFromJson(Map<String, dynamic> json) =>
    _$PatientProfileImpl(
      diabetesHistory: json['diabetes_history'] as bool,
      diabetesType: json['diabetes_type'] as String?,
      diagnosisDate: json['diagnosis_date'] as String?,
    );

Map<String, dynamic> _$$PatientProfileImplToJson(
        _$PatientProfileImpl instance) =>
    <String, dynamic>{
      'diabetes_history': instance.diabetesHistory,
      'diabetes_type': instance.diabetesType,
      'diagnosis_date': instance.diagnosisDate,
    };

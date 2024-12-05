// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorPreviewImpl _$$DoctorPreviewImplFromJson(Map<String, dynamic> json) =>
    _$DoctorPreviewImpl(
      userId: json['user_id'] as String,
      name: json['name'] as String,
      photo: json['photo'] as String?,
      specialization: json['specialization'] as String,
      rating: (json['rating'] as num).toDouble(),
      workYears: (json['work_years'] as num).toInt(),
      city: json['city'] as String,
      province: json['province'] as String,
    );

Map<String, dynamic> _$$DoctorPreviewImplToJson(_$DoctorPreviewImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'photo': instance.photo,
      'specialization': instance.specialization,
      'rating': instance.rating,
      'work_years': instance.workYears,
      'city': instance.city,
      'province': instance.province,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      id: (json['id'] as num).toInt(),
      doctorUserId: json['doctor_user_id'] as String,
      doctorName: json['doctor_name'] as String,
      doctorSpecialization: json['doctor_specialization'] as String,
      doctorPhoto: json['doctor_photo'] as String,
      date: DateTime.parse(json['date'] as String),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor_user_id': instance.doctorUserId,
      'doctor_name': instance.doctorName,
      'doctor_specialization': instance.doctorSpecialization,
      'doctor_photo': instance.doctorPhoto,
      'date': instance.date.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'location': instance.location,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorProfileImpl _$$DoctorProfileImplFromJson(Map<String, dynamic> json) =>
    _$DoctorProfileImpl(
      userId: json['user_id'] as String,
      name: json['name'] as String,
      strNo: json['str_no'] as String,
      photo: json['photo'] as String?,
      institution: json['institution'] as String,
      specialization: json['specialization'] as String,
      city: json['city'] as String,
      province: json['province'] as String,
      rating: (json['rating'] as num).toDouble(),
      totalPatient: (json['total_patient'] as num).toInt(),
      workYears: (json['work_years'] as num).toInt(),
      bioDesc: json['bio_desc'] as String,
      experiences: (json['experiences'] as List<dynamic>)
          .map((e) => Experience.fromJson(e as Map<String, dynamic>))
          .toList(),
      educations: (json['educations'] as List<dynamic>)
          .map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedules: (json['schedules'] as List<dynamic>)
          .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DoctorProfileImplToJson(_$DoctorProfileImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'str_no': instance.strNo,
      'photo': instance.photo,
      'institution': instance.institution,
      'specialization': instance.specialization,
      'city': instance.city,
      'province': instance.province,
      'rating': instance.rating,
      'total_patient': instance.totalPatient,
      'work_years': instance.workYears,
      'bio_desc': instance.bioDesc,
      'experiences': instance.experiences,
      'educations': instance.educations,
      'schedules': instance.schedules,
    };

_$ExperienceImpl _$$ExperienceImplFromJson(Map<String, dynamic> json) =>
    _$ExperienceImpl(
      institution: json['institution'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$$ExperienceImplToJson(_$ExperienceImpl instance) =>
    <String, dynamic>{
      'institution': instance.institution,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
    };

_$EducationImpl _$$EducationImplFromJson(Map<String, dynamic> json) =>
    _$EducationImpl(
      university: json['university'] as String,
      major: json['major'] as String,
      startYear: (json['start_year'] as num).toInt(),
      endYear: (json['end_year'] as num).toInt(),
    );

Map<String, dynamic> _$$EducationImplToJson(_$EducationImpl instance) =>
    <String, dynamic>{
      'university': instance.university,
      'major': instance.major,
      'start_year': instance.startYear,
      'end_year': instance.endYear,
    };

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
    };

_$BookScheduleParamsImpl _$$BookScheduleParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BookScheduleParamsImpl(
      doctorUserId: json['doctor_user_id'] as String,
      date: json['date'] as String,
      timeSlotId: (json['time_slot_id'] as num).toInt(),
    );

Map<String, dynamic> _$$BookScheduleParamsImplToJson(
        _$BookScheduleParamsImpl instance) =>
    <String, dynamic>{
      'doctor_user_id': instance.doctorUserId,
      'date': instance.date,
      'time_slot_id': instance.timeSlotId,
    };

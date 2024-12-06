// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fundus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FundusImpl _$$FundusImplFromJson(Map<String, dynamic> json) => _$FundusImpl(
      id: (json['id'] as num).toInt(),
      imageUrl: json['image_url'] as String,
      verifyStatus: json['verify_status'] as String,
      predictedDisease: json['predicted_disease'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      feedbacks: (json['feedbacks'] as List<dynamic>)
          .map((e) => FundusFeedback.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FundusImplToJson(_$FundusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'verify_status': instance.verifyStatus,
      'predicted_disease': instance.predictedDisease,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'feedbacks': instance.feedbacks,
    };

_$FundusFeedbackImpl _$$FundusFeedbackImplFromJson(Map<String, dynamic> json) =>
    _$FundusFeedbackImpl(
      id: (json['id'] as num).toInt(),
      doctorUserId: json['doctor_user_id'] as String,
      doctorName: json['doctor_name'] as String,
      notes: json['notes'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$FundusFeedbackImplToJson(
        _$FundusFeedbackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor_user_id': instance.doctorUserId,
      'doctor_name': instance.doctorName,
      'notes': instance.notes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeroImpl _$$HeroImplFromJson(Map<String, dynamic> json) => _$HeroImpl(
      id: (json['id'] as num).toInt(),
      imageUrl: json['image_url'] as String,
      verifyStatus: json['verify_status'] as String,
      predictedDisease: json['predicted_disease'] as String,
      diabetesType: json['diabetes_type'] as String,
      recommendedExamination: json['recommended_examination'] as String,
      recommendedNotes: json['recommended_notes'] as String,
    );

Map<String, dynamic> _$$HeroImplToJson(_$HeroImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'verify_status': instance.verifyStatus,
      'predicted_disease': instance.predictedDisease,
      'diabetes_type': instance.diabetesType,
      'recommended_examination': instance.recommendedExamination,
      'recommended_notes': instance.recommendedNotes,
    };

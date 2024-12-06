// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Article2Impl _$$Article2ImplFromJson(Map<String, dynamic> json) =>
    _$Article2Impl(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      readCount: (json['read_count'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$Article2ImplToJson(_$Article2Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'read_count': instance.readCount,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$Article2DetailImpl _$$Article2DetailImplFromJson(Map<String, dynamic> json) =>
    _$Article2DetailImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      author: json['author'] as String,
      image: json['image'] as String,
      readCount: (json['read_count'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$Article2DetailImplToJson(
        _$Article2DetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'author': instance.author,
      'image': instance.image,
      'read_count': instance.readCount,
      'created_at': instance.createdAt.toIso8601String(),
    };

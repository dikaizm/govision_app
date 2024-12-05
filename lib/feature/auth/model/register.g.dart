// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterImpl _$$RegisterImplFromJson(Map<String, dynamic> json) =>
    _$RegisterImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirm_password'] as String?,
      phone: json['phone'] as String?,
      birthDate: json['birth_date'] as String?,
      gender: json['gender'] as String?,
      role: json['role'] as String?,
      roleId: (json['role_id'] as num?)?.toInt(),
      city: json['city'] as String?,
      province: json['province'] as String?,
      addressDetail: json['address_detail'] as String?,
    );

Map<String, dynamic> _$$RegisterImplToJson(_$RegisterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'phone': instance.phone,
      'birth_date': instance.birthDate,
      'gender': instance.gender,
      'role': instance.role,
      'role_id': instance.roleId,
      'city': instance.city,
      'province': instance.province,
      'address_detail': instance.addressDetail,
    };

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.freezed.dart';
part 'register.g.dart';

Register registerFromJson(String str) =>
    Register.fromJson(json.decode(str) as Map<String, dynamic>);

String registerToJson(Register data) => json.encode(data.toJson());

@freezed
class Register with _$Register {
  const factory Register({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'confirm_password') String? confirmPassword,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'role_id') int? roleId,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'province') String? province,
    @JsonKey(name: 'address_detail') String? address,
  }) = _Register;

  factory Register.fromJson(Map<String, dynamic> json) =>
      _$RegisterFromJson(json);
}

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

String userToJson(User data) => json.encode(data.toJson());

@freezed
class User with _$User {
  const factory User(
      {@JsonKey(name: 'user_id') required String userId,
      required String name,
      required String email,
      required String role,
      @JsonKey(name: 'completed_profile') required bool completedProfile,
      @JsonKey(name: 'access_token') String? accessToken,
      String? photo}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static User empty = User(
    userId: '',
    name: '',
    email: '',
    role: '',
    accessToken: '',
    completedProfile: false,
  );
}

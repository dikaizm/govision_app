import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/auth/model/user.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _Loading;

  const factory UserState.loggedIn(User data) = _UserLoggedIn;

  const factory UserState.error(AppException error) = _Error;
}

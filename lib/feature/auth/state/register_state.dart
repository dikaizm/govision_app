import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/shared/constants/role.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;

  const factory RegisterState.loading() = _Loading;

  const factory RegisterState.loggedIn({required Role role}) =
      RegisterStateLoggedIn;

  const factory RegisterState.loggedOut() = RegisterStateLoggedOut;

  const factory RegisterState.error(AppException error) = _Error;
}

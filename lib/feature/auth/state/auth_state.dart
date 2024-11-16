import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/shared/constants/role.dart';
import 'package:govision/shared/http/app_exception.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.loggedIn({required Role role}) = AuthStateLoggedIn;

  const factory AuthState.loggedOut() = AuthStateLoggedOut;

  const factory AuthState.error(AppException error) = _Error;
}

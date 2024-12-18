import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:govision/feature/auth/model/user.dart';

part 'app_start_state.freezed.dart';

@freezed
class AppStartState with _$AppStartState {
  const factory AppStartState.initial() = _Initial;

  const factory AppStartState.unauthenticated() = Unauthenticated;

  const factory AppStartState.internetUnAvailable() = _InternetUnAvailable;

  const factory AppStartState.authenticated(User user) = AppAuthenticated;

  const factory AppStartState.authenticatedAnonymous() =
      AppAuthenticatedAnonymous;
}

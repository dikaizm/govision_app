import 'package:govision/feature/auth/repository/user_repository.dart';
import 'package:govision/feature/auth/state/user_state.dart';
import 'package:govision/shared/http/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@riverpod
class UserNotifier extends _$UserNotifier {
  late final UserRepository _userRepository = ref.read(userRepositoryProvider);

  @override
  UserState build() {
    fetchUser();
    return const UserState.loading();
  }

  Future<void> fetchUser() async {
    state = const UserState.loading();

    final _user = await _userRepository.fetchUser();

    try {
      state = UserState.loggedIn(_user);
    } catch (e) {
      state = UserState.error(AppException.errorWithMessage(e.toString()));
    }
  }

  void fetchUserFromApi() {
    _userRepository.fetchUserFromApi().then((response) {
      state = response;
    });
  }
}

import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:govision/feature/auth/model/user.dart';
import 'package:govision/feature/auth/state/user_state.dart';
import 'package:govision/shared/constants/store_key.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/http/api_response.dart';
import 'package:govision/shared/http/app_exception.dart';
import 'package:govision/shared/util/platform_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserRepositoryProtocol {
  Future<void> remove();

  Future<void> saveUser(User user);

  Future<User?> fetchUser();

  Future<UserState> fetchUserFromApi();
}

final userRepositoryProvider = Provider(UserRepository.new);

class UserRepository implements UserRepositoryProtocol {
  UserRepository(this._ref);

  late final PlatformType _platform = _ref.read(platformTypeProvider);
  final Ref _ref;
  User? _user;

  @override
  Future<void> remove() async {
    _user = null;
    final prefs = await SharedPreferences.getInstance();

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.android ||
        _platform == PlatformType.linux) {
      const storage = FlutterSecureStorage();
      try {
        await storage.delete(key: StoreKey.user.toString());
      } on Exception catch (e) {
        log(e.toString());
      }
    } else {
      await prefs.remove(StoreKey.user.toString());
    }

    await prefs.remove(StoreKey.user.toString());
  }

  @override
  Future<void> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    _user = user;

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.android ||
        _platform == PlatformType.linux) {
      const storage = FlutterSecureStorage();
      try {
        await storage.write(
            key: StoreKey.user.toString(), value: userToJson(user));
      } on Exception catch (e) {
        log(e.toString());
      }
    } else {
      await prefs.setString(StoreKey.user.toString(), userToJson(user));
    }
  }

  @override
  Future<User> fetchUser() async {
    String? userValue;

    User _user = User.empty;

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.android ||
        _platform == PlatformType.linux) {
      const storage = FlutterSecureStorage();
      userValue = await storage.read(key: StoreKey.user.toString());
    } else {
      final prefs = await SharedPreferences.getInstance();
      userValue = prefs.getString(StoreKey.user.toString());
    }
    try {
      if (userValue != null) {
        log(userValue);
        final userMap = jsonDecode(userValue);
        _user = User.fromJson(userMap as Map<String, dynamic>);
      }
    } on Exception catch (e) {
      log(e.toString());
    }

    return _user;
  }

  @override
  Future<UserState> fetchUserFromApi() async {
    final response = await _ref.read(apiProvider).get('/user');

    response.when(
        success: (success) {},
        error: (error) {
          return UserState.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;
      try {
        final _user = User.fromJson(value as Map<String, dynamic>);

        final _userOld = await fetchUser();
        final _userNew = _user.copyWith(accessToken: _userOld.accessToken);

        return UserState.loggedIn(_userNew);
      } catch (e) {
        return UserState.error(AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return UserState.error(response.exception);
    } else {
      return const UserState.loading();
    }
  }
}

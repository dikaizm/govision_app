import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/auth/model/token.dart';
import 'package:govision/feature/auth/model/user.dart';
import 'package:govision/feature/auth/repository/token_repository.dart';
import 'package:govision/feature/auth/repository/user_repository.dart';
import 'package:govision/feature/auth/state/auth_state.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/http/app_exception.dart';
import 'package:govision/shared/util/validator.dart';

abstract class AuthRepositoryProtocol {
  Future<AuthState> login(String email, String password);

  Future<AuthState> signUp(String name, String email, String password);
}

final authRepositoryProvider = Provider(AuthRepository.new);

class AuthRepository implements AuthRepositoryProtocol {
  AuthRepository(this._ref) {}

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<AuthState> login(String email, String password) async {
    if (!Validator.isValidPassword(password)) {
      return const AuthState.error(
          AppException.errorWithMessage('Minimum 8 characters required'));
    }
    if (!Validator.isValidEmail(email)) {
      return const AuthState.error(
          AppException.errorWithMessage('Please enter a valid email address'));
    }
    final params = {
      'email': email,
      'password': password,
    };
    final loginResponse = await _api.post('auth/login', jsonEncode(params));

    log(loginResponse.toString());

    return loginResponse.when(success: (success) async {
      final _tokenRepository = _ref.read(tokenRepositoryProvider);
      final _userRepository = _ref.read(userRepositoryProvider);

      final token = Token.fromJson(success as Map<String, dynamic>);
      final user = User.fromJson(success);

      await _tokenRepository.saveToken(token);
      await _userRepository.saveUser(user);

      return AuthState.loggedIn(user);
    }, error: (error) {
      return AuthState.error(error);
    });
  }

  @override
  Future<AuthState> signUp(
    String name,
    String email,
    String password,
  ) async {
    if (!Validator.isValidPassword(password)) {
      return const AuthState.error(
        AppException.errorWithMessage('Minimum 8 characters required'),
      );
    }
    if (!Validator.isValidEmail(email)) {
      return const AuthState.error(
        AppException.errorWithMessage('Please enter a valid email address'),
      );
    }
    final params = {
      'name': name,
      'email': email,
      'password': password,
      'confirm_password': password,
    };
    final signUpResponse = await _api.post('auth/register', jsonEncode(params));

    return signUpResponse.when(success: (success) async {
      final tokenRepository = _ref.read(tokenRepositoryProvider);

      final user = User.fromJson(success as Map<String, dynamic>);
      final token = Token.fromJson(success as Map<String, dynamic>);

      await tokenRepository.saveToken(token);

      return AuthState.loggedIn(user);
    }, error: (error) {
      return AuthState.error(error);
    });
  }
}

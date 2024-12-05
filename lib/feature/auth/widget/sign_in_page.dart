import 'dart:convert';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/auth/model/token.dart';
import 'package:govision/feature/auth/provider/auth_provider.dart';
import 'package:govision/feature/auth/repository/token_repository.dart';
import 'package:govision/feature/auth/state/auth_state.dart';
import 'package:govision/feature/auth/widget/box_logo.dart';
import 'package:govision/feature/auth/widget/logo.dart';
import 'package:govision/feature/auth/widget/register_page.dart';
import 'package:govision/feature/auth/widget/sponsor.dart';
import 'package:govision/feature/auth/widget/text_input.dart';
import 'package:govision/feature/profile/widget/create_patient_profile_page.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/constants/role.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/util/snackbar.dart';
import 'package:govision/shared/util/validator.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({super.key});
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),

              const SizedBox(height: 15),

              // logo
              // const LogoWidget(),
              const Text(
                'GoVision',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // text
                        const Text(
                          'Masuk ke akun Anda',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),

                        const SizedBox(height: 16),

                        // form
                        TextInput(
                          controller: _emailController,
                          labelText: 'Email',
                          hintText: 'Masukan email',
                          obscureText: false,
                        ),

                        const SizedBox(height: 14),

                        TextInput(
                          controller: _passwordController,
                          labelText: 'Password',
                          hintText: 'Masukan password',
                          obscureText: true,
                        ),

                        // button
                        const SizedBox(height: 14),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            height: 48,
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0, // Disable elevation
                                backgroundColor: AppColors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () async {
                                final email = _emailController.text;
                                final password = _passwordController.text;

                                if (!Validator.isValidEmail(email)) {
                                  showTopSnackBar(
                                      context,
                                      'Please enter a valid email address',
                                      Colors.red[700]);
                                  return;
                                }
                                if (!Validator.isValidPassWord(password)) {
                                  showTopSnackBar(
                                      context,
                                      'Minimum 8 characters required',
                                      Colors.red[700]);
                                  return;
                                }

                                final params = {
                                  'email': email,
                                  'password': password,
                                };

                                try {
                                  final loginResponse = await ref
                                      .read(apiProvider)
                                      .post('/auth/login', jsonEncode(params));

                                  loginResponse.when(success: (success) async {
                                    final String accessToken =
                                        success["access_token"] as String;

                                    final tokenRepository =
                                        ref.read(tokenRepositoryProvider);
                                    final token = Token(token: accessToken);

                                    await tokenRepository.saveToken(token);

                                    final userRole =
                                        stringToRole(success["role"] as String);

                                    AuthState.loggedIn(role: userRole);

                                    log('Success logged in');
                                    showTopSnackBar(
                                        context,
                                        "Selamat datang ${success["name"]}",
                                        AppColors.green);

                                    if (userRole == Role.patient) {
                                      ref
                                          .read(routerProvider)
                                          .go(MainPatientRoute.path);
                                    } else if (userRole == Role.doctor) {
                                      ref
                                          .read(routerProvider)
                                          .go(MainDoctorRoute.path);
                                    }
                                  }, error: (error) {
                                    return showTopSnackBar(context,
                                        error.toString(), Colors.red[700]);
                                  });
                                } catch (e) {
                                  // Handle general exceptions
                                  showTopSnackBar(
                                      context, e.toString(), Colors.red[700]);
                                }
                              },
                              child: const Text(
                                'Masuk',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // register
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Belum punya akun?',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CreatePatientProfilePage()));
                              },
                              child: const Text(
                                'Daftar',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Role stringToRole(String roleString) {
  switch (roleString) {
    case 'doctor':
      return Role.doctor;
    case 'patient':
      return Role.patient;
    default:
      throw Exception('Unknown role: $roleString');
  }
}

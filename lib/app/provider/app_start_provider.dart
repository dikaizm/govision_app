import 'package:flutter/material.dart';
import 'package:govision/app/model/menu.dart';
import 'package:govision/feature/auth/provider/auth_provider.dart';
import 'package:govision/feature/auth/repository/token_repository.dart';
import 'package:govision/feature/auth/state/auth_state.dart';
import 'package:govision/feature/chat/widget/chat_page.dart';
import 'package:govision/feature/education/widget/education_page.dart';
import 'package:govision/feature/home/widget/home_page.dart';
import 'package:govision/feature/home_doctor/widget/home_doctor_page.dart';
import 'package:govision/feature/medical_record/widget/medical_record_page.dart';
import 'package:govision/feature/patient/widget/patient_page.dart';
import 'package:govision/feature/schedule/widget/schedule_page.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../state/app_start_state.dart';

part 'app_start_provider.g.dart';

@riverpod
class AppStartNotifier extends _$AppStartNotifier {
  late final TokenRepository _tokenRepository =
      ref.read(tokenRepositoryProvider);

  @override
  FutureOr<AppStartState> build() async {
    // Set the initial state
    state = const AsyncValue.data(AppStartState.initial());

    ref.onDispose(() {});

    // Delay for 3 seconds to show splash screen
    await Future.delayed(const Duration(seconds: 2));

    final _authState = ref.watch(authNotifierProvider);

    if (_authState is AuthStateLoggedIn) {
      return AppStartState.authenticated(role: _authState.role);
    }

    if (_authState is AuthStateLoggedOut) {
      return AppStartState.unauthenticated();
    }

    final token = await _tokenRepository.fetchToken();
    if (token != null) {
      final role = await _tokenRepository.fetchUserRole(token.token);
      return AppStartState.authenticated(role: role);
    } else {
      return const AppStartState.unauthenticated();
    }
  }

  MenuPages loadMenuPatient() {
    return MenuPages(
      pages: const [
        HomePage(),
        MedicalRecordPage(),
        EducationPage(),
        ChatPage(),
      ],
      bottomNavs: [
        _bottomNavItem('Beranda', Icons.home_filled),
        _bottomNavItem('Funduskopi', Icons.receipt_rounded),
        _bottomNavItem('Edukasi', Icons.book),
        _bottomNavItem('Pesan', Icons.chat),
      ],
    );
  }

  MenuPages loadMenuDoctor() {
    return MenuPages(
      pages: const [
        HomeDoctorPage(),
        SchedulePage(),
        PatientPage(),
        ChatPage(),
      ],
      bottomNavs: [
        _bottomNavItem('Beranda', Icons.home_filled),
        _bottomNavItem('Jadwal', Icons.calendar_today),
        _bottomNavItem('Pasien Saya', Icons.person),
        _bottomNavItem('Pesan', Icons.chat),
      ],
    );
  }

  BottomNavigationBarItem _bottomNavItem(String label, IconData icon) {
    return BottomNavigationBarItem(
      activeIcon: Icon(
        icon,
        size: 24,
        color: AppColors.lime,
      ),
      icon: Icon(
        icon,
        size: 24,
      ),
      label: label,
    );
  }
}

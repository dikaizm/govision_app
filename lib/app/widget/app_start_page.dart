import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/app/provider/app_start_provider.dart';
import 'package:govision/app/widget/main_page.dart';
import 'package:govision/feature/auth/widget/sign_in_page.dart';
import 'package:govision/shared/constants/role.dart';
import 'package:govision/shared/widget/connection_unavailable_widget.dart';
import 'package:govision/shared/widget/loading_widget.dart';
import 'package:govision/shared/widget/splash_page.dart';

class AppStartPage extends ConsumerWidget {
  const AppStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appStartNotifierProvider);

    return state.when(
      data: (data) {
        return data.maybeWhen(
          initial: SplashPage.new,
          authenticated: (user) {
            if (user.role == Role.doctor.value) {
              return const MainDoctorPage();
            } else {
              return const MainPatientPage();
            }
          },
          unauthenticated: SignInPage.new,
          internetUnAvailable: () => const ConnectionUnavailableWidget(),
          orElse: () => const LoadingWidget(),
        );
      },
      error: (e, st) => const LoadingWidget(),
      loading: () => const LoadingWidget(),
    );
  }
}

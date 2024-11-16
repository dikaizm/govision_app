// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter

import 'package:flutter/material.dart';
import 'package:govision/app/widget/app_start_page.dart';
import 'package:govision/app/widget/main_page.dart';
import 'package:govision/feature/amsler_grid/widget/amsler_failed_page.dart';
import 'package:govision/feature/amsler_grid/widget/amsler_help_page.dart';
import 'package:govision/feature/amsler_grid/widget/amsler_success_page.dart';
import 'package:govision/feature/amsler_grid/widget/amsler_test_page.dart';
import 'package:govision/feature/appointment/widget/appointment_page.dart';
import 'package:govision/feature/appointment/widget/health_facility_page.dart';
import 'package:govision/feature/auth/widget/register_page.dart';
import 'package:govision/feature/auth/widget/sign_in_page.dart';
import 'package:govision/feature/chat/widget/chat_page.dart';
import 'package:govision/feature/chat/widget/chat_room_page.dart';
import 'package:govision/feature/doctor_profile/widget/doctor_profile_page.dart';
import 'package:govision/feature/education/widget/education_page.dart';
import 'package:govision/feature/fundus_capture/widget/fundus_capture_page.dart';
import 'package:govision/feature/fundus_capture/widget/fundus_help_page.dart';
import 'package:govision/feature/fundus_record/widget/fundus_detail_page.dart';
import 'package:govision/feature/home/widget/home_page.dart';
import 'package:govision/feature/home_doctor/widget/home_doctor_page.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/feature/medical_record/widget/medical_record_detail_page.dart';
import 'package:govision/feature/medical_record/widget/medical_record_page.dart';
import 'package:govision/feature/notification/widget/notification_page.dart';
import 'package:govision/feature/patient/widget/patient_page.dart';
import 'package:govision/feature/profile/widget/profile_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@riverpod
GoRouter router(RouterRef ref) {
  //final notifier = ref.watch(routerNotifierProvider.notifier);

  return GoRouter(
    navigatorKey: _key,
    //refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: AppRoute.path,
    routes: $appRoutes,
    //redirect: notifier.redirect,
  );
}

/**
 * App Routes
 */
@TypedGoRoute<AppRoute>(path: AppRoute.path)
class AppRoute extends GoRouteData {
  const AppRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AppStartPage();
  }
}

@TypedGoRoute<MainPatientRoute>(path: MainPatientRoute.path)
class MainPatientRoute extends GoRouteData {
  const MainPatientRoute();

  static const path = '/mainPatient';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MainPatientPage();
  }
}

@TypedGoRoute<MainDoctorRoute>(path: MainDoctorRoute.path)
class MainDoctorRoute extends GoRouteData {
  const MainDoctorRoute();

  static const path = '/mainDoctor';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MainDoctorPage();
  }
}

/**
 * Feature Routes
 */
@TypedGoRoute<AmslerFailedRoute>(path: AmslerFailedRoute.path)
class AmslerFailedRoute extends GoRouteData {
  const AmslerFailedRoute();
  static const path = '/amslerFailed';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AmslerFailedPage();
  }
}

@TypedGoRoute<AmslerHelpRoute>(path: AmslerHelpRoute.path)
class AmslerHelpRoute extends GoRouteData {
  const AmslerHelpRoute();
  static const path = '/amslerHelp';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AmslerHelpPage();
  }
}

@TypedGoRoute<AmslerSuccessRoute>(path: AmslerSuccessRoute.path)
class AmslerSuccessRoute extends GoRouteData {
  const AmslerSuccessRoute();
  static const path = '/amslerSuccess';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AmslerSuccessPage();
  }
}

@TypedGoRoute<AmslerTestRoute>(path: AmslerTestRoute.path)
class AmslerTestRoute extends GoRouteData {
  const AmslerTestRoute();
  static const path = '/amslerTest';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AmslerTestPage();
  }
}

@TypedGoRoute<AppointmentRoute>(path: AppointmentRoute.path)
class AppointmentRoute extends GoRouteData {
  const AppointmentRoute();
  static const path = '/appointment';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AppointmentPage();
  }
}

@TypedGoRoute<ChatRoute>(path: ChatRoute.path)
class ChatRoute extends GoRouteData {
  const ChatRoute();
  static const path = '/chat';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChatPage();
  }
}

@TypedGoRoute<ChatRoomRoute>(path: ChatRoomRoute.path)
class ChatRoomRoute extends GoRouteData {
  const ChatRoomRoute();
  static const path = '/chatRoom';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChatRoomPage();
  }
}

@TypedGoRoute<DoctorProfileRoute>(path: DoctorProfileRoute.path)
class DoctorProfileRoute extends GoRouteData {
  const DoctorProfileRoute();
  static const path = '/doctorProfile';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DoctorProfilePage();
  }
}

@TypedGoRoute<EducationRoute>(path: EducationRoute.path)
class EducationRoute extends GoRouteData {
  const EducationRoute();
  static const path = '/education';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EducationPage();
  }
}

@TypedGoRoute<FundusCaptureRoute>(path: FundusCaptureRoute.path)
class FundusCaptureRoute extends GoRouteData {
  const FundusCaptureRoute();
  static const path = '/fundusCapture';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FundusCapturePage();
  }
}

@TypedGoRoute<FundusDetailRoute>(path: FundusDetailRoute.path)
class FundusDetailRoute extends GoRouteData {
  const FundusDetailRoute();
  static const path = '/fundusDetail';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FundusDetailPage();
  }
}

@TypedGoRoute<FundusHelpRoute>(path: FundusHelpRoute.path)
class FundusHelpRoute extends GoRouteData {
  const FundusHelpRoute();
  static const path = '/fundusHelp';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FundusHelpPage();
  }
}

@TypedGoRoute<HealthFacilityRoute>(path: HealthFacilityRoute.path)
class HealthFacilityRoute extends GoRouteData {
  const HealthFacilityRoute();
  static const path = '/healthFacility';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HealthFacilityPage();
  }
}

@TypedGoRoute<HomeRoute>(path: HomeRoute.path)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<HomeDoctorRoute>(path: HomeDoctorRoute.path)
class HomeDoctorRoute extends GoRouteData {
  const HomeDoctorRoute();

  static const path = '/homeDoctor';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeDoctorPage();
  }
}

@TypedGoRoute<MedicalRecordRoute>(path: MedicalRecordRoute.path)
class MedicalRecordRoute extends GoRouteData {
  const MedicalRecordRoute();
  static const path = '/medicalRecord';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MedicalRecordPage();
  }
}

@TypedGoRoute<MedicalRecordDetailRoute>(path: MedicalRecordDetailRoute.path)
class MedicalRecordDetailRoute extends GoRouteData {
  const MedicalRecordDetailRoute();
  static const path = '/medicalRecordDetail';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MedicalRecordDetailPage();
  }
}

@TypedGoRoute<NotificationRoute>(path: NotificationRoute.path)
class NotificationRoute extends GoRouteData {
  const NotificationRoute();
  static const path = '/notification';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NotificationPage();
  }
}

@TypedGoRoute<PatientRoute>(path: PatientRoute.path)
class PatientRoute extends GoRouteData {
  const PatientRoute();
  static const path = '/patient';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PatientPage();
  }
}

@TypedGoRoute<ProfileRoute>(path: ProfileRoute.path)
class ProfileRoute extends GoRouteData {
  const ProfileRoute();
  static const path = '/profile';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}

@TypedGoRoute<SignInRoute>(path: SignInRoute.path)
class SignInRoute extends GoRouteData {
  const SignInRoute();

  static const path = '/signIn';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SignInPage();
  }
}

@TypedGoRoute<SignUpRoute>(path: SignUpRoute.path)
class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  static const path = '/signUp';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RegisterPage();
  }
}

class GoNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('did push route ${route} : ${previousRoute}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('did pop route ${route} : ${previousRoute}');
  }
}

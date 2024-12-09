import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/app/model/menu.dart';
import 'package:govision/app/provider/app_start_provider.dart';
import 'package:govision/shared/constants/role.dart';

final bottomNavNotifier = ChangeNotifierProvider<BottomNavNotifier>((ref) {
  return BottomNavNotifier();
});

class BottomNavNotifier extends ChangeNotifier {
  late PageController controller;
  int index = 0;

  void initializeController(int initialPage) {
    controller = PageController(initialPage: initialPage);
  }

  void resetNavigation() {
    controller.dispose(); // Dispose current controller
    initializeController(0); // Initialize controller to initial page
    index = 0; // Reset index
    notifyListeners(); // Notify listeners of state change
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void changeIndex(int value) {
    index = value;
    controller.jumpToPage(value);
    notifyListeners();
  }
}

class MainPatientPage extends ConsumerWidget {
  const MainPatientPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainPage(role: Role.patient.value);
  }
}

class MainDoctorPage extends ConsumerWidget {
  const MainDoctorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainPage(role: Role.doctor.value);
  }
}

class MainPage extends ConsumerStatefulWidget {
  const MainPage({required this.role, super.key});

  final String role;

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late MenuPages menuPages;

  @override
  void initState() {
    super.initState();
    _initializeState();
  }

  @override
  void didUpdateWidget(covariant MainPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.role != widget.role) {
      _initializeState();
    }
  }

  void _initializeState() {
    final state = ref.read(bottomNavNotifier);
    final appNotifier = ref.read(appStartNotifierProvider.notifier);

    // Initialize or reinitialize the controller and index
    state.initializeController(state.index);

    if (widget.role == Role.patient.value) {
      menuPages = appNotifier.loadMenuPatient();
    } else {
      menuPages = appNotifier.loadMenuDoctor();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(bottomNavNotifier);
    final appNotifier = ref.read(appStartNotifierProvider.notifier);

    if (widget.role == Role.patient.value) {
      menuPages = appNotifier.loadMenuPatient();
    } else {
      menuPages = appNotifier.loadMenuDoctor();
    }

    return Scaffold(
      key: _scaffoldKey,
      extendBody: false,
      body: PageView(
        controller: state.controller,
        physics: const NeverScrollableScrollPhysics(),
        children: menuPages.pages,
      ),
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
        onTap: state.changeIndex,
        currentIndex: state.index,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.grey[800],
        unselectedItemColor: Colors.grey[600],
        showUnselectedLabels: true,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: menuPages.bottomNavs,
      ),
    );
  }
}

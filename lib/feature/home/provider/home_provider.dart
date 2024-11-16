import 'package:govision/feature/home/state/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeState build() {
    return const HomeState.loaded('Data loaded');
  }

  void loadData() async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      const data = 'Data loaded';
      state = const HomeState.loaded(data);
    } catch (e) {
      state = const HomeState.error('Failed to load data');
    }
  }
}

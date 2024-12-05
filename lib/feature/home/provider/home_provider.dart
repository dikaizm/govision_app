import 'package:govision/feature/home/state/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  

  @override
  HomeState build() {
    return const HomeState.loaded('Data loaded');
  }
}

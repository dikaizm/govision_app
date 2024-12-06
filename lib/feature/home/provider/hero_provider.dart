import 'package:govision/feature/home/repository/hero_repository.dart';
import 'package:govision/feature/home/state/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hero_provider.g.dart';

@riverpod
class HeroNotifier extends _$HeroNotifier {
  late final HeroRepository _repository = ref.read(heroRepositoryProvider);

  @override
  HeroState build() {
    fetchHero();
    return const HeroState.loading();
  }

  void fetchHero() {
    _repository.fetchHero().then((value) {
      state = value;
    });
  }
}

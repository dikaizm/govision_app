import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/home/model/appointment.dart';
import 'package:govision/feature/home/model/hero.dart';
import 'package:govision/feature/home/state/home_state.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/http/api_response.dart';
import 'package:govision/shared/http/app_exception.dart';

abstract class HeroRepositoryProtocol {
  Future<HeroState> fetchHero();
}

final heroRepositoryProvider = Provider(HeroRepository.new);

class HeroRepository implements HeroRepositoryProtocol {
  HeroRepository(this._ref);

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<HeroState> fetchHero() async {
    final response = await _api.get('/fundus/home/verified');

    response.when(
        success: (success) {},
        error: (error) {
          return HeroState.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;
      try {
        if (value == null) {
          return const HeroState.empty();
        }

        final heroData = Hero.fromJson(value as Map<String, dynamic>);

        return HeroState.loaded(heroData);
      } catch (e) {
        return HeroState.error(AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return HeroState.error(response.exception);
    } else {
      return const HeroState.loading();
    }
  }
}

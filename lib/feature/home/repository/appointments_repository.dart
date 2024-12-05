import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/home/model/appointment.dart';
import 'package:govision/feature/home/model/book.dart';
import 'package:govision/feature/home/state/appointments_state.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/http/api_response.dart';
import 'package:govision/shared/http/app_exception.dart';

abstract class AppointmentsRepositoryProtocol {
  Future<AppointmentsState> fetchAppointments();
}

final appointmentsRepositoryProvider = Provider(AppointmentsRepository.new);

class AppointmentsRepository implements AppointmentsRepositoryProtocol {
  AppointmentsRepository(this._ref);

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<AppointmentsState> fetchAppointments() async {
    final response = await _api.get('/appointments?range=week');

    response.when(
        success: (success) {},
        error: (error) {
          return AppointmentsState.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;
      try {
        final _apts = appointmentsFromJson(value as List<dynamic>);

        if (_apts.isEmpty) {
          return const AppointmentsState.empty();
        }

        return AppointmentsState.loaded(_apts);
      } catch (e) {
        return AppointmentsState.error(
            AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return AppointmentsState.error(response.exception);
    } else {
      return const AppointmentsState.loading();
    }
  }
}

import 'package:govision/feature/home/repository/appointments_repository.dart';
import 'package:govision/feature/home/state/appointments_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'appointment_provider.g.dart';

@riverpod
class AppointmentNotifier extends _$AppointmentNotifier {
  late final AppointmentsRepository _repository =
      ref.read(appointmentsRepositoryProvider);

  @override
  AppointmentsState build() {
    fetchAppointments();
    return const AppointmentsState.loading();
  }

  void fetchAppointments() {
    _repository.fetchAppointments().then((response) {
      state = response;
    });
  }
}

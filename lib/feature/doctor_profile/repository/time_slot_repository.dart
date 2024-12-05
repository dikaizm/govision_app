import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/doctor_profile/model/time_slot.dart';
import 'package:govision/feature/doctor_profile/state/time_slot_state.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/http/api_response.dart';
import 'package:govision/shared/http/app_exception.dart';

abstract class TimeSlotRepositoryProtocol {
  Future<TimeSlotState> fetchTimeSlots(String userId, DateTime date);
}

final timeSlotRepositoryProvider = Provider(TimeSlotRepository.new);

class TimeSlotRepository implements TimeSlotRepositoryProtocol {
  TimeSlotRepository(this._ref);

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<TimeSlotState> fetchTimeSlots(String userId, DateTime date) async {
    final response = await _api.get('/user/doctors/$userId/time-slots/$date');

    response.when(
        success: (success) {},
        error: (error) {
          return TimeSlotState.error(error);
        });

    if (response is APISuccess) {
      final value = response.value;

      try {
        final _timeSlots = timeSlotsFromJson(value as List<dynamic>);

        if (_timeSlots.isEmpty) {
          return const TimeSlotState.empty();
        }

        return TimeSlotState.loaded(_timeSlots);
      } catch (e) {
        return TimeSlotState.error(AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return TimeSlotState.error(response.exception);
    } else {
      return const TimeSlotState.loading();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends ConsumerStatefulWidget {
  const Calendar(
      {required this.selectedDay,
      required this.onDaySelected,
      required this.availableDates,
      super.key});

  final DateTime selectedDay;
  final void Function(DateTime) onDaySelected;
  final List<DateTime> availableDates;

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends ConsumerState<Calendar> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _focusedDay;
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _focusedDay = widget.selectedDay;
    _selectedDay = widget.selectedDay;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _focusedDay ??= DateTime.now();
        _selectedDay ??= DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_focusedDay == null || _selectedDay == null) {
      return const SizedBox.shrink(); // Prevent null rendering
    }

    return TableCalendar(
      locale: 'id_ID',
      daysOfWeekHeight: 20,
      availableGestures: AvailableGestures.horizontalSwipe,
      // Essential properties
      firstDay: DateTime.now().subtract(const Duration(days: 1)),
      lastDay: DateTime.now().add(const Duration(days: 90)),
      focusedDay: _focusedDay!,

      // Disable past dates and non-available dates
      enabledDayPredicate: _isDayEnabled,

      // Calendar appearance and styling
      calendarFormat: _calendarFormat,
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },

      // Customization
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),

      calendarStyle: CalendarStyle(
        // Customize day cell appearance
        outsideDaysVisible: false,
        defaultDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        weekendDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        selectedDecoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        todayDecoration: BoxDecoration(
          color: AppColors.green20,
          borderRadius: BorderRadius.circular(8),
        ),
        disabledDecoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
        ),

        // Text styles
        defaultTextStyle: const TextStyle(color: Colors.black),
        weekendTextStyle: TextStyle(color: Colors.red.shade600),
        selectedTextStyle: const TextStyle(color: Colors.white),
        todayTextStyle: const TextStyle(color: Colors.black),
        disabledTextStyle: const TextStyle(color: Colors.grey),
      ),

      // Event handling
      onDaySelected: (selectedDay, focusedDay) {
        // Check if the selected day is enabled
        if (_isDayEnabled(selectedDay)) {
          setState(() {
            _selectedDay = selectedDay;
            // Ensure the calendar focuses on the month of the selected day
            _focusedDay = focusedDay;
          });

          // Call the provided onDaySelected callback
          _onDaySelected(selectedDay);
        }
      },

      // Focus changing
      onPageChanged: (focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
      },
    );
  }

  // Check if a day is enabled
  bool _isDayEnabled(DateTime day) {
    return day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
        widget.availableDates.any((date) => isSameDay(date, day));
  }

  // Optional method to handle day selection
  void _onDaySelected(DateTime selectedDay) {
    widget.onDaySelected(selectedDay);
  }
}

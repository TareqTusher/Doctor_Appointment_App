import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/controller/doctor_appointment/doctor_appointment_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDateSection extends ConsumerWidget {
  const SelectDateSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier=ref.read(doctorAppointmentProvider.notifier);
    final state = ref.watch(doctorAppointmentProvider);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 8)],
      ),
      child: TableCalendar(
        rowHeight: 50,
        headerStyle: const HeaderStyle(formatButtonVisible: false),
        firstDay: DateTime.utc(1998),
        lastDay: DateTime.utc(2030),
        focusedDay: state.focusedDate ?? DateTime.now(),
        selectedDayPredicate: (day) => isSameDay(state.selectedDay, day),
        onDaySelected: (selectedDay, focusedDay) {
          notifier.dateSelect(selectedDay, focusedDay);
            
        },
        calendarStyle: CalendarStyle(
          rangeHighlightColor: AppColors.darkTeal,
          selectedDecoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: AppColors.darkTeal,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/controller/doctor_appointment/doctor_appointment_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectHourSection extends ConsumerWidget {
  const SelectHourSection({super.key});

  final List<String> timeSlots = const [
    "09.00 AM", "09.30 AM", "10.00 AM",
    "10.30 AM", "11.00 AM", "11.30 AM",
    "3.00 PM",  "3.30 PM",  "4.00 PM",
    "4.30 PM",  "5.00 PM",  "5.30 PM",
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(doctorAppointmentProvider.notifier);
    final selectedTime = ref.watch(doctorAppointmentProvider).selectedTime;

    return Expanded(
      child: GridView.builder(
        itemCount: timeSlots.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2.5,
        ),
        itemBuilder: (context, index) {
          final time = timeSlots[index];
          final isSelected = selectedTime == time;

          return GestureDetector(
            onTap: () => notifier.selectTime(time), // ✅ Riverpod দিয়ে update
            child: Container(
              height: 42,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.darkTeal : AppColors.grey50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                time,
                style: Styles.font16SemiBold(
                  isSelected ? AppColors.white : AppColors.grey500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
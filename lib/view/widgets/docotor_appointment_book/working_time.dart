import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class WorkingTimeSection extends StatelessWidget {
  const WorkingTimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          Strings.workingTime,
          style: Styles.fontText18SemiBold(AppColors.grey800),
        ),
        const SizedBox(height: 12),
         Text(
          'Monday-Friday, 08:00 AM-18:00 PM',
           style: Styles.fontText12Normal(AppColors.grey500)
        ),
      ],
    );
  }
}

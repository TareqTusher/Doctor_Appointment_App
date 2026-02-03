import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonOnlineDoctors extends StatelessWidget {
  const CommonOnlineDoctors({super.key, required this.title, required this.description});
final String title;
final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Text(
                       title,
                       style: Styles.fontBold(AppColors.grey700),
                     ),
                     const SizedBox(height: 8),
                     Text(
                       description,
                       textAlign: TextAlign.center,
                       style: Styles.fontNormal(AppColors.grey500),
                     ),
      ],
    );
  }
}
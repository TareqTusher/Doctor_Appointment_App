import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class DocotorExperience extends StatelessWidget {
  const DocotorExperience({super.key, required this.icon, required this.value, required this.label});
final IconData icon;
final String value;
final String label;
  @override
  Widget build(BuildContext context) {
      return Column(
        children: [
          Container(
         
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: AppColors.grey100,
              shape: BoxShape.circle
            ),
            child: Center(child: Icon(icon, size: 30, color: AppColors.darkTeal)),
          ),
           Text(
                value,
                style:Styles.font16SemiBold(AppColors.grey600),
              ),
           Text(
                label,
                 style:Styles.fontNormal(AppColors.grey500),
              ),
        ],
      );
  }
}
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class ImageNameSection extends StatelessWidget {
  const ImageNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          CircleAvatar(
                  radius: 160,
                  backgroundImage: AssetImage('assets/images/doc12.png'),
                ),
                SizedBox(height: 16),
                Text(
                  Strings.yourName,
                  style: Styles.font16Bold(AppColors.grey800),
                ),
                SizedBox(height: 4),
                Text(
                  "+123 56564534454",
                  style: Styles.fontNormal(AppColors.grey500),
                ),
      ],
    );
  }
}
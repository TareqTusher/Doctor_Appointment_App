import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                    children: [
                      Expanded(
                        child: Container(height: 1, color: AppColors.grey400),
                      ),
                      SizedBox(width: 24),
                      Text(
                        Strings.or,
                        style: Styles.font16Medium(AppColors.grey500),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        child: Container(height: 1, color: AppColors.grey400),
                      ),
                    ],
                  );
  }
}
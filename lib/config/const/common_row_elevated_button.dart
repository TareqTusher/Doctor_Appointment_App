import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonRowElevatedButton extends StatelessWidget {
  const CommonRowElevatedButton({super.key, required this.leftBtnText, required this.rightBtnText});
  final String leftBtnText;
  final String rightBtnText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.grey200,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () => Navigator.pop(context),
            child: Text(
              leftBtnText,
              style: Styles.font14Bold(AppColors.darkTeal),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.darkTeal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              rightBtnText,
              style: Styles.font14Bold(AppColors.white),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.text, required this.onPressed});
final String text;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPressed ,
      child: Container(
      
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.midNightBlue,
          borderRadius: BorderRadius.circular(60)
        ),
        child: Center(child: Text(text,style: Styles.fontMedium(AppColors.white),)),
      ),
    );
  }
}
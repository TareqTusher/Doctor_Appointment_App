import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonTitleAndButton extends StatelessWidget {
  const CommonTitleAndButton({super.key, required this.title, required this.buttonText, required this.onTap});
  final String title;
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(title,style: Styles.fontText18Bold(AppColors.darkTeal),),
                InkWell(
                  onTap: onTap,
                  child: Text(buttonText,style: Styles.fontText14Medium(AppColors.grey500),))
              ],);
  }
}
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  const CommonTitle({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Styles.fontText20SemiBold(AppColors.darkTeal),);
  }
}
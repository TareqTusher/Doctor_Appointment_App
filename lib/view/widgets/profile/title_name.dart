import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class TitleName extends StatelessWidget {
  const TitleName({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [

  Text(title,style: Styles.font16Regular(AppColors.grey500),),
    Text(Strings.markAll,style: Styles.font14Bold(AppColors.darkTeal),),

],);
  }
}
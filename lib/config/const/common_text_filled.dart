import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonTextFilled extends StatelessWidget {
  const CommonTextFilled({super.key, required this.hintText, this.icon});
  final String hintText;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon:icon==null?null: Icon(icon, size: 18, color: AppColors.grey400),
        hintText: hintText,
        hintStyle: Styles.fontNormal(AppColors.grey400),
        fillColor: AppColors.grey50,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.grey400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),

          borderSide: BorderSide(color: AppColors.grey400),
        ),
      ),
    );
  }
}

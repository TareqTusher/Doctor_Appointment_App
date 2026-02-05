import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonSocialMediaButton extends StatelessWidget {
  const CommonSocialMediaButton({super.key, required this.text, required this.images, required this.onTap});
  final String text;
  final String images;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 48,

        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey200),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(images, width: 20, height: 20),
              SizedBox(width: 8,),
              Text(
                text,
                style: Styles.fontNormal(AppColors.darkTeal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

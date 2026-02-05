import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class ButtonRowWidget extends StatelessWidget {
  const ButtonRowWidget({super.key, required this.text, required this.buttonText, required this.onTap});
final String text;
final String buttonText;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: Styles.fontNormal(AppColors.grey500),
                      ),
                      InkWell(
                        onTap:onTap,
                        child: Text(
                          buttonText,
                          style: Styles.fontNormal(AppColors.blue),
                        ),
                      ),
                    ],
                  );
  }
}
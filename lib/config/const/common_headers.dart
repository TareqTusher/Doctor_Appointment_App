import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonHeaders extends StatelessWidget {
  const CommonHeaders({super.key, required this.image, required this.title, required this.description});
final String image;
final String title;
final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Image.asset(image),
                  SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Health",
                          style: Styles.largeTextRegular(AppColors.grey500),
                        ),
                        TextSpan(
                          text: "Pal",
                          style: Styles.largeTextRegular(AppColors.grey900),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(height: 32),
                  Text(
                    title,
                    style: Styles.largeTextSemiBold(AppColors.darkTeal),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,
                    style: Styles.fontNormal(AppColors.grey500),
                  ),
      ],
    );
  }
}
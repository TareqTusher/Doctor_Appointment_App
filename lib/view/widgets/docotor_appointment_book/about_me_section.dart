import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({super.key});

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.aboutMe,
          style: Styles.largeTextSemiBold(AppColors.grey800),
        ),
        SizedBox(height: 8),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: isExpanded == true
                    ? Strings.fullBioData
                    : Strings.biodata,
                style: Styles.fontNormal(AppColors.grey500),
              ),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                text: isExpanded ? Strings.viewLess : Strings.viewMore,
                style: Styles.font14Bold(
                  AppColors.grey900,
                ).copyWith(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

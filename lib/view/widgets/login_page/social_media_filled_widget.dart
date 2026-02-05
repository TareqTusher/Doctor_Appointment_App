import 'package:docotor_appointment_app/config/const/common_social_media_button.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class SocialMediaFilledWidget extends StatelessWidget {
  const SocialMediaFilledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
  CommonSocialMediaButton(
                    text: Strings.google,
                    images: 'assets/images/google.png',
                    onTap: () {},
                  ),
                  SizedBox(height: 16),
                  CommonSocialMediaButton(
                    text: Strings.facebook,
                    images: 'assets/images/facebook.png',
                    onTap: () {},
                  ),
      ],
    );
  }
}
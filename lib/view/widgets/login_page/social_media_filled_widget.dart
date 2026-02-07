import 'package:docotor_appointment_app/config/const/common_social_media_button.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaFilledWidget extends StatelessWidget {
  const SocialMediaFilledWidget({super.key});

  Future<void> _openGoogle() async {
    final Uri url = Uri.parse("https://www.google.com");

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonSocialMediaButton(
          text: Strings.google,
          images: 'assets/images/google.png',
          onTap: _openGoogle,
        ),
        const SizedBox(height: 16),
        CommonSocialMediaButton(
          text: Strings.facebook,
          images: 'assets/images/facebook.png',
          onTap: () {},
        ),
      ],
    );
  }
}

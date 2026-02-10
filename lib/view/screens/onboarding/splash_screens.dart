import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/controller/onboarding/splash_screen_notifier.dart';
import 'package:docotor_appointment_app/view/widgets/onboarding/center_logo_card.dart';
import 'package:docotor_appointment_app/view/widgets/onboarding/color_card.dart';
import 'package:docotor_appointment_app/view/widgets/onboarding/image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(splashScreenProvider);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 14,
            childAspectRatio: 0.44,

            children: [
              Expanded(child: ColorCard(color: AppColors.lightPurple)),
              ImageCard(image: 'assets/images/doc1.png'),
              Expanded(child: ColorCard(color: AppColors.deepPink)),
              Expanded(child: ImageCard(image: 'assets/images/doc2.png')),
              Expanded(child: CenterLogoCard()),
              Expanded(child: ImageCard(image: 'assets/images/doc3.png')),
              Expanded(child: ColorCard(color: AppColors.orange)),
              Expanded(child: ImageCard(image: 'assets/images/doc9.png')),
              Expanded(child: ColorCard(color: AppColors.green)),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/view/widgets/splash_screen/center_logo_card.dart';
import 'package:docotor_appointment_app/view/widgets/splash_screen/color_card.dart';
import 'package:docotor_appointment_app/view/widgets/splash_screen/image_card.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.count(
            
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 14,
            childAspectRatio: 0.44,

            children: [
              Expanded(child: ColorCard(color: AppColors.lightPurple)),
                            ImageCard(image: 'assets/images/doc1.png',),

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


import 'package:docotor_appointment_app/config/const/common_online_doctors.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/controller/onboarding/doctors_online_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

// ignore: must_be_immutable
class DoctorsOnline extends ConsumerWidget {
  DoctorsOnline({super.key});

  final List<Map<String, String>> pages = [
    {
      "image": "assets/images/doc1.png",
      "title": "Meet Doctors Online",
      "desc":
          "Connect with specialized doctors online for convenient and comprehensive medical consults",
    },
    {
      "image": "assets/images/doc2.png",
      "title": "24/7 Consultation",
      "desc":
          "Get medical advice anytime from experienced and certified doctors",
    },
    {
      "image": "assets/images/doc3.png",
      "title": "Trusted Healthcare",
      "desc": "Your health matters. Consult trusted professionals from home",
    },
  ];

  // @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(doctorOnlineProvider.notifier);
    final state = ref.watch(doctorOnlineProvider);
    final currentIndex = state.selectedIndex ?? 0;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 522,
                child: PageView.builder(
                  controller: notifier.pageController,
                  itemCount: pages.length,
                  onPageChanged: (index) {
                    notifier.setIndex(index);
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 420,
                          width: double.infinity,
                          child: Image.asset(
                            pages[index]["image"]!,
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(height: 28),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 38.0),
                          child: CommonOnlineDoctors(
                            title: pages[index]["title"]!,
                            description: pages[index]["desc"]!,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Column(
                  children: [
                    CustomElevatedButton(text: "Next", onPressed: () {}),
                    const SizedBox(height: 24),
                    PageViewDotIndicator(
                      currentItem: currentIndex,
                      count: pages.length,
                      unselectedColor: AppColors.grey300,
                      selectedColor: AppColors.grey700,
                    ),

                    const SizedBox(height: 24),

                    InkWell(
                      onTap: () {
                        if (currentIndex < pages.length - 1) {
                          notifier.pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else if (currentIndex == 2) {
                          router.push(AppRoutesPath.createAccount);
                        }
                      },
                      child: Text(
                        "Skip",
                        style: Styles.fontNormal(AppColors.grey500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

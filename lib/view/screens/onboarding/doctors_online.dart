import 'package:docotor_appointment_app/config/const/common_online_doctors.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class DoctorsOnline extends StatefulWidget {
  const DoctorsOnline({super.key});

  @override
  State<DoctorsOnline> createState() => _DoctorsOnlineState();
}

class _DoctorsOnlineState extends State<DoctorsOnline> {
  final PageController pageController = PageController();
  int selectedPage = 0;

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
      "desc":
          "Your health matters. Consult trusted professionals from home",
    },
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() {
                    selectedPage = index;
                  });
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
                        padding:
                            const EdgeInsets.symmetric(horizontal: 38.0),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 38.0),
              child: Column(
                children: [
                  CustomElevatedButton(
                    text: "Next",
                    onPressed: () {
                      if (selectedPage < pages.length - 1) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 24),
                  PageViewDotIndicator(
                    currentItem: selectedPage,
                    count: pages.length,
                    unselectedColor: AppColors.grey300,
                    selectedColor: AppColors.grey700,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

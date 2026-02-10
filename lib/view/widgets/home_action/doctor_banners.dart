import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

// ignore: must_be_immutable
class DoctorBanners extends StatelessWidget {
   DoctorBanners({super.key});

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
      "desc": "Your health matters. Consult trusted professionals from home",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return      Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    height: 164,
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      gradient: LinearGradient(
                        colors: [AppColors.lightTeal, AppColors.deepTeal],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.specializedDoctor,
                              style: Styles.fontBold(AppColors.white),
                            ),
                            SizedBox(
                              width: 180,
                              child: Text(
                                Strings.appointDoctor,
                                style: Styles.fontSmallNormal(AppColors.white),
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),

                        Image.asset(
                          "assets/images/doc21.png",
                          height: 240,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: 2,
                    left: 0,
                    right: 0,
                    child: PageViewDotIndicator(
                      currentItem: selectedPage,
                      count: 4,
                      unselectedColor: AppColors.white,
                      selectedColor: AppColors.white,
                    ),
                  ),
                ],
              );
  }
}
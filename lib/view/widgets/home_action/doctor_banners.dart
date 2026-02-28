import 'package:carousel_slider/carousel_slider.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

// ignore: must_be_immutable
class DoctorBanners extends StatefulWidget {
  const DoctorBanners({super.key});

  @override
  State<DoctorBanners> createState() => _DoctorBannersState();
}

class _DoctorBannersState extends State<DoctorBanners> {
  int selectedPage = 0;
  PageController controller = PageController();

  final List<Map<String, String>> pages = [
    {
      "image": "assets/images/doctor1.png",
      "title": "Meet Doctors Online",
      "desc":
          "Connect with specialized doctors online for convenient and comprehensive medical consults",
    },
    {
      "image": "assets/images/doctor2.png",
      "title": "Meet Doctors Online",
      "desc":
          "Connect with specialized doctors online for convenient and comprehensive medical consults",
    },
    {
      "image": "assets/images/doctor3.png",
      "title": "24/7 Consultation",
      "desc":
          "Get medical advice anytime from experienced and certified doctors",
    },
    {
      "image": "assets/images/doctor4.png",
      "title": "Trusted Healthcare",
      "desc": "Your health matters. Consult trusted professionals from home",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        onPageChanged: (index, reason) {
          setState(() {
            selectedPage = index;
          });
        },
        height: 164.0,
        viewportFraction: 1,
      ),
      items: pages.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    height: 164,
                    width: double.infinity,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              i["title"]!,
                              style: Styles.fontBold(AppColors.white),
                            ),
                            SizedBox(
                              width: 160,
                              child: Text(
                                i["desc"]!,
                                style: Styles.fontSmallNormal(AppColors.white),
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(8)),
                          child: Image.asset(
                            
                            i["image"]!,
                            height: 260,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
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
                      count: pages.length,
                      unselectedColor: AppColors.grey400,
                      selectedColor: AppColors.white,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

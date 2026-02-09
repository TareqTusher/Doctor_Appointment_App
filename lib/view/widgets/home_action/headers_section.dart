import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class HeadersSection extends StatelessWidget {
  const HeadersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [
                      Image.asset(
                        "assets/images/location.png",
                        height: 24,
                        width: 20,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Seattle,USA",
                        style: Styles.fontSemiBold(AppColors.grey700),
                      ),
                      SizedBox(width: 8),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.expand_more,
                          size: 18,
                          color: AppColors.grey700,
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: [
                      Container(
                        height: 34,
                        width: 34,
                        decoration: BoxDecoration(
                          color: AppColors.grey100,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.notifications,
                          size: 24,
                          color: AppColors.grey600,
                        ),
                      ),

                      Positioned(
                        left: 12,
                        right: 0,
                        top: 8,
                        child: Icon(
                          Icons.circle,
                          size: 8,
                          color: AppColors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              );
  }
}
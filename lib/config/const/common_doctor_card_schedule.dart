import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonDoctorCardSchedule extends StatelessWidget {
  const CommonDoctorCardSchedule({super.key, required this.leftButtonText, required this.rightButtonText, required this.date, required this.time, required this.images, required this.drName, required this.designation, required this.location});
  final String leftButtonText;
  final String rightButtonText;
  final String date;
  final String time;
  final String images;
  final String drName;
  final String designation;
  final String location;


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    date,
                    style: Styles.fontBold(AppColors.grey800),
                  ),
                  SizedBox(width: 4),
                  Text(time, style: Styles.fontBold(AppColors.grey800)),
                ],
              ),
              SizedBox(height: 12),
              Divider(height: 1, color: AppColors.grey200),
              SizedBox(height: 12),

              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      images,
                      height: 108,
                      width: 108,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        drName,
                        style: Styles.fontBold(AppColors.grey800),
                      ),
                      SizedBox(height: 12),
                      Text(
                        designation,
                        style: Styles.font16SemiBold(AppColors.grey600),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/location.png",
                            fit: BoxFit.cover,
                            height: 14,
                            width: 14,
                            color: AppColors.grey400,
                          ),
                          SizedBox(width: 4),
                          Text(
                           designation,
                            style: Styles.fontNormal(AppColors.grey600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12),
              Divider(height: 1, color: AppColors.grey200),
              SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 38,
                        padding: EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 12,
                          right: 12,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.grey200,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            leftButtonText,
                            style: Styles.smallTextSemiBold(AppColors.darkTeal),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 38,

                        decoration: BoxDecoration(
                          color: AppColors.darkTeal,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            rightButtonText,
                            style: Styles.smallTextSemiBold(AppColors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

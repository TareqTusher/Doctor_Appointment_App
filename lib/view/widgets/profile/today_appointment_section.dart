import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class TodayAppointmentSection extends StatelessWidget {
  const TodayAppointmentSection({super.key});

  @override
  Widget build(BuildContext context) {
        List<String> schedule = [
      "Appointment Success",
      "Appointment Cancelled",
      "Scheduled Changed",
    ];
    List<Color> colors = [
      AppColors.lightGreen,
      AppColors.lightPink,
      AppColors.grey100,
    ];
    return          ListView.builder(
                shrinkWrap: true,
                itemCount: colors.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: colors[index],
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                "assets/images/calendar.png",
                              ),
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  schedule[index],
                                  style: Styles.font16Bold(
                                    AppColors.darkTeal,
                                  ),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                    "You have successfully booked your appointment with dr. David patel",
                                    style: Styles.fontNormal(AppColors.grey500),
                                    overflow: TextOverflow.ellipsis,maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    
                        Text(
                          "1hr",
                          style: Styles.fontNormal(AppColors.grey500),
                        ),
                      ],
                    ),
                  );
                },
              );
  }
}
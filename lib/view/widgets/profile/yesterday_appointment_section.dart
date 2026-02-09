import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class YesterdayAppointmentSection extends StatelessWidget {
  const YesterdayAppointmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> schedule = [
      "Dr.Maccualm",
      "Dr.David patel",
      "Dr. Emily Warker",
    ];
    List<Color> colors = [
      AppColors.lightGreen,
      AppColors.lightGreen,
      AppColors.lightGreen,
    ];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
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
                    child: Image.asset("assets/images/calendar.png"),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Appointment Success",
                        style: Styles.font16Bold(AppColors.darkTeal),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        width: 300,
                        child: Text(
                          "You have successfully booked your appointment with ${schedule[index]}",
                          style: Styles.fontNormal(AppColors.grey500),
                          overflow: TextOverflow.ellipsis,maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Text("1hr", style: Styles.fontNormal(AppColors.grey500)),
            ],
          ),
        );
      },
    );
  }
}

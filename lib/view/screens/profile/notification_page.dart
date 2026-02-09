import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/widgets/profile/title_name.dart';
import 'package:docotor_appointment_app/view/widgets/profile/today_appointment_section.dart';
import 'package:docotor_appointment_app/view/widgets/profile/yesterday_appointment_section.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: () => router.push(AppRoutesPath.homePage),
          child: Icon(Icons.arrow_back, size: 18, color: AppColors.grey700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
              alignment: Alignment.center,
              height: 24,
              width: 58,
              decoration: BoxDecoration(
                color: AppColors.grey600,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                '1 New',
                style: Styles.smallTextSemiBold(AppColors.white),
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.white,
        title: Text(
          Strings.notifications,
          style: Styles.largeTextSemiBold(AppColors.grey700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TitleName(title: Strings.today),

              SizedBox(height: 16),
              TodayAppointmentSection(),
              SizedBox(height: 32),
              TitleName(title: Strings.yesterday),
              SizedBox(height: 16),

              YesterdayAppointmentSection(),
            ],
          ),
        ),
      ),
    );
  }
}

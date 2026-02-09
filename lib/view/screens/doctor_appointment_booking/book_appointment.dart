import 'package:docotor_appointment_app/config/const/common_title.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/widgets/docotor_appointment_book/select_date_section.dart';
import 'package:docotor_appointment_app/view/widgets/docotor_appointment_book/select_hour_section.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/show_dialog_widget.dart';
import 'package:flutter/material.dart';

class BookAppointmentPage extends StatefulWidget {
  const BookAppointmentPage({super.key, this.doctorName});
  final String? doctorName;
  @override
  State<BookAppointmentPage> createState() => _BookAppointmentPageState();
}

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            Strings.bookAppointment,
            style: Styles.largeTextSemiBold(AppColors.grey700),
          ),
          leading: InkWell(
            onTap: () => router.push(AppRoutesPath.doctorDetails),
            child: Icon(Icons.arrow_back),
          ),
          backgroundColor: AppColors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonTitle(text: Strings.selectDate),

              const SizedBox(height: 16),

              SelectDateSection(),

              const SizedBox(height: 16),

              CommonTitle(text: Strings.selectHour),

              const SizedBox(height: 16),

              SelectHourSection(),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: EdgeInsets.all(24),
          color: AppColors.white,
          child: CustomElevatedButton(
            text: Strings.confirm,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return DialogWidget(
                    bottomText: Strings.endAppointment,
                    description:
                        "Your Appointment with Dr. David is confirmed for June 30,2025 at 10:00PM",
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

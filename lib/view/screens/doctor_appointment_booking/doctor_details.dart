import 'package:docotor_appointment_app/config/const/common_title_and_button.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/const/doctor_card.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/controller/doctor_appointment/doctor_appointment_notifier.dart';
import 'package:docotor_appointment_app/view/widgets/docotor_appointment_book/about_me_section.dart';
import 'package:docotor_appointment_app/view/widgets/docotor_appointment_book/docotor_experience.dart';
import 'package:docotor_appointment_app/view/widgets/docotor_appointment_book/reviews_section.dart';
import 'package:docotor_appointment_app/view/widgets/docotor_appointment_book/working_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DoctorDetailspage extends StatelessWidget {
  const DoctorDetailspage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: () {
            router.push(AppRoutesPath.allDocotor);
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(Strings.doctorDetails),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: InkWell(
              onTap: () {
                router.push(AppRoutesPath.favorites);
              },
              child: Icon(Icons.favorite_outline, color: AppColors.grey800),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              DoctorCard(
                onTap: () {},
                name: "Dr. David Patel",
                specialty: "Cardiologist",
                location: "Cardiology Center, USA",
                imageUrl: "assets/images/doc5.png",
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DocotorExperience(
                    icon: Icons.people,
                    value: '2,000+',
                    label: 'patients',
                  ),
                  DocotorExperience(
                    icon: Icons.workspace_premium_outlined,
                    value: '10+',
                    label: 'experience',
                  ),
                  DocotorExperience(
                    icon: Icons.star_outline,
                    value: '5',
                    label: 'rating',
                  ),
                  DocotorExperience(
                    icon: Icons.chat_bubble_outline,
                    value: '1,872',
                    label: 'reviews',
                  ),
                ],
              ),
              AboutMeSection(),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: WorkingTimeSection(),
              ),
              SizedBox(height: 16),
              CommonTitleAndButton(
                title: Strings.reviews,
                buttonText: Strings.seeAll,
                onTap: () {},
              ),
              const SizedBox(height: 16),
              ReviewsSection(),
            ],
          ),
        ),
      ),
      bottomSheet: Consumer(
        builder: (context, ref, _) {
          return Container(
            padding: EdgeInsets.all(24),
            color: AppColors.white,
            child: CustomElevatedButton(
              text: Strings.bookAppointment,
              onPressed: () {
                
                    ref.read(doctorAppointmentProvider.notifier)
                    .setDoctorName("Dr. David Patel");

                router.push(AppRoutesPath.bookAppointMent);
              },
            ),
          );
        },
      ),
    );
  }
}

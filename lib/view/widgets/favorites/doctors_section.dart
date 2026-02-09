import 'package:docotor_appointment_app/config/const/common_row_elevated_button.dart';
import 'package:docotor_appointment_app/config/const/doctor_card.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class DoctorsSection extends StatelessWidget {
  const DoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: DoctorCard(
                onTap: () {
                  router.push(AppRoutesPath.doctorDetails);
                },
                name: "Dr. David Patel",
                favoriteBtn: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              Strings.removeFavorites,
                              style: Styles.largeTextSemiBold(
                                AppColors.darkTeal,
                              ),
                            ),

                            SizedBox(height: 16),
                            Divider(color: AppColors.grey200, height: 1),
                            SizedBox(height: 16),

                            DoctorCard(
                              onTap: () {
                                router.push(AppRoutesPath.doctorDetails);
                              },
                              name: "Dr. David Patel",
                              specialty: "Cardiologist",
                              location: "Cardiology Center, USA",
                              rating: 5,
                              reviews: "1,872 Reviews",
                              imageUrl: "assets/images/doc8.png",
                              icons: Icons.star,
                            ),
                            SizedBox(height: 24),
                            CommonRowElevatedButton(
                              leftBtnText: Strings.cancel,
                              rightBtnText: Strings.remove,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                specialty: "Cardiologist",
                location: "Cardiology Center, USA",
                rating: 5,
                reviews: "1,872 Reviews",
                imageUrl: "assets/images/doc5.png",
                icons: Icons.star,
              ),
            );
          },
        ),
      ),
    );
  }
}

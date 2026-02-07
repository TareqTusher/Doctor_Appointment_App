import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/view/screens/home_action/bottom_nav_page.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Text("Emplty Location"),
      ),
      bottomSheet: Container(
        height: 80,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [BoxShadow(color: AppColors.grey200, blurRadius: 3)],
        ),
        child: CustomBottomNavBar(selectedIndex: 1),
      ),
    );
  }
}
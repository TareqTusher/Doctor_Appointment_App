import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/screens/home_action/bottom_nav_page.dart';
import 'package:docotor_appointment_app/view/widgets/profile/image_name.dart';
import 'package:docotor_appointment_app/view/widgets/profile/profile_menu_list_section.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(),
        backgroundColor: AppColors.white,
        title: Text(
          Strings.profile,
          style: Styles.largeTextSemiBold(AppColors.grey700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageNameSection(),
                SizedBox(height: 16),
                ProfileMenuListSection(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [BoxShadow(color: AppColors.grey200, blurRadius: 3)],
        ),
        child: CustomBottomNavBar(selectedIndex: 3),
      ),
    );
  }
}

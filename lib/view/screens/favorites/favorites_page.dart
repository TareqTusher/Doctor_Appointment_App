import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/widgets/favorites/doctors_section.dart';
import 'package:docotor_appointment_app/view/widgets/favorites/hospital_section.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoritesPage extends StatelessWidget {
  FavoritesPage({super.key});

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        backgroundColor: AppColors.white,

        appBar: AppBar(
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              router.push(AppRoutesPath.doctorDetails);
            },
            child: Icon(Icons.arrow_back),
          ),
          backgroundColor: AppColors.white,
          title: Text(
            Strings.favorites,
            style: Styles.font16SemiBold(AppColors.grey700),
          ),

          bottom: TabBar(
            dividerColor: AppColors.grey200,
            dividerHeight: 1,
            labelColor: AppColors.darkTeal,
            indicatorColor: AppColors.darkTeal,
            labelStyle: Styles.font16SemiBold(AppColors.darkTeal),
            unselectedLabelStyle: Styles.font16SemiBold(AppColors.grey400),
            tabs: [
              Tab(text: Strings.doctor),
              Tab(text: Strings.hospital),
            ],
          ),
        ),
        body: TabBarView(children: [DoctorsSection(), HospitalSection()]),
      ),
    );
  }
}

import 'package:docotor_appointment_app/config/const/common_doctor_card_schedule.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/screens/home_action/bottom_nav_page.dart';
import 'package:flutter/material.dart';

class MyBookingsPage extends StatefulWidget {
  const MyBookingsPage({super.key});

  @override
  State<MyBookingsPage> createState() => _MyBookingsPageState();
}

class _MyBookingsPageState extends State<MyBookingsPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          centerTitle: true,
          leading: SizedBox(),
          title: Text(Strings.myBookings),

          bottom: TabBar(
            onTap: (value) {
              setState(() {
                selectedIndex == value;
              });
            },

            labelStyle: Styles.font16SemiBold(AppColors.darkTeal),
            unselectedLabelStyle: Styles.font16SemiBold(AppColors.grey400),
            labelColor: AppColors.darkTeal,
            unselectedLabelColor: AppColors.grey400,
            indicatorColor: AppColors.darkTeal,
            tabs: [
              Tab(text: Strings.upcoming),
              Tab(text: Strings.completed),
              Tab(text: Strings.cancelled),
            ],
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: CommonDoctorCardSchedule(
                            leftButtonText: Strings.cancel,
                            rightButtonText: Strings.rescedule,
                            date: "2February 2026",
                            time: "4:57PM",
                            images: 'assets/images/doc21.png',
                            drName: 'Doctor name',
                            designation: 'Orthopedic Surgery',
                            location: 'Elite Ortho Clinic,USA',
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: CommonDoctorCardSchedule(
                            leftButtonText: Strings.rebook,
                            rightButtonText: Strings.addReview,
                            date: "2February 2026",
                            time: "4:57PM",
                            images: 'assets/images/doc21.png',
                            drName: 'Doctor name',
                            designation: 'Orthopedic Surgery',
                            location: 'Elite Ortho Clinic,USA',
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Center(child: Text("Canceled List")),
            ],
          ),
        ),

        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [BoxShadow(color: AppColors.grey200, blurRadius: 3)],
          ),
          child: CustomBottomNavBar(selectedIndex: 2),
        ),
      ),
    );
  }
}

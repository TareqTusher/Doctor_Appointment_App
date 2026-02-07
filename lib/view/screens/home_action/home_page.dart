import 'package:docotor_appointment_app/config/const/common_text_filled.dart';
import 'package:docotor_appointment_app/config/const/common_title_and_button.dart';
import 'package:docotor_appointment_app/config/const/hospital_details_card.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/screens/home_action/all_category_section.dart';
import 'package:docotor_appointment_app/view/screens/home_action/all_doctors_page.dart';
import 'package:docotor_appointment_app/view/screens/home_action/bottom_nav_page.dart';
import 'package:docotor_appointment_app/view/widgets/home_action/doctor_banners.dart';
import 'package:docotor_appointment_app/view/widgets/home_action/headers_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.location,
                style: Styles.fontNormal(AppColors.grey500),
              ),
              SizedBox(height: 8),
              HeadersSection(),
              SizedBox(height: 14),
              CommonTextFilled(
                hintText: "Search Doctor",
                icon: Icons.search,
                color: AppColors.grey100,
                iconSize: 24,
              ),

              SizedBox(height: 14),

              DoctorBanners(),
              SizedBox(height: 16),
              CommonTitleAndButton(
                title: Strings.categories,
                buttonText: Strings.seeAll,
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllDoctorsPage()));
                },
              ),
              SizedBox(height: 16),
        AllCategorySection(),
                      SizedBox(height: 12),
                      CommonTitleAndButton(title: Strings.nearByMedicalCenter, buttonText: Strings.seeAll, onTap: (){}),
SizedBox(height: 16,),

SizedBox(
  height: 310,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemCount: 3,
    itemBuilder: (context,index){
  
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: HospitalDetailsCard(
                imageUrl:
                    'assets/images/room1.png',
                clinicName: 'Sunrise Health Clinic',
                address: '123 Oak Street, CA 98765',
                rating: 5.0,
                reviewCount: 58,
                distance: '2.5 km',
                duration: '40min',
                facilityType: 'Hospital',
              ),
    );
  }),
)
,
          SizedBox(height: 100,)
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 80,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [BoxShadow(color: AppColors.grey200, blurRadius: 3)],
        ),
        child: CustomBottomNavBar(selectedIndex: 0),
      ),
    );
  }
}

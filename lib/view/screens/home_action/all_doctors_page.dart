import 'package:docotor_appointment_app/config/const/common_text_filled.dart';
import 'package:docotor_appointment_app/config/const/common_title_and_button.dart';
import 'package:docotor_appointment_app/config/const/doctor_card.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/screens/doctor_appointment_booking/doctor_details.dart';
import 'package:docotor_appointment_app/view/screens/home_action/doctor_category_list.dart';
import 'package:flutter/material.dart';

class AllDoctorsPage extends StatelessWidget {
  const AllDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,

        leading: InkWell(child: Icon(Icons.arrow_back)),
        title: Center(
          child: Text(
            Strings.allDoctors,
            style: Styles.largeTextSemiBold(AppColors.grey700),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CommonTextFilled(
                hintText: "Search Doctor",
                icon: Icons.search,
                color: AppColors.grey100,
                iconSize: 24,
              ),
              SizedBox(height: 24),
              DoctorCategoryList(),
SizedBox(height: 24,),

CommonTitleAndButton(title: "532 Founds", buttonText: "Dafault", onTap: (){}),
SizedBox(height: 8,),
ListView.builder(
  itemCount: 5,
  shrinkWrap: true,
  itemBuilder: (context, index) =>    Padding(
    padding: const EdgeInsets.only(bottom:  8.0),
    child: DoctorCard(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorDetailspage()));
      },
            name: "Dr. David Patel",
            specialty: "Cardiologist",
            location: "Cardiology Center, USA",
            rating: 5,
            reviews: "1,872 Reviews",
            imageUrl: "assets/images/doc5.png",
          ),
  ),)
           ,
            ],
          ),
        ),
      ),
    );
  }
}

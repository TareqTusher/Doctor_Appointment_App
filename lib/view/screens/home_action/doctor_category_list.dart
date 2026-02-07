import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class DoctorCategoryList extends StatefulWidget {
  const DoctorCategoryList({super.key});

  @override
  State<DoctorCategoryList> createState() => _DoctorCategoryListState();
}

class _DoctorCategoryListState extends State<DoctorCategoryList> {
  @override
  Widget build(BuildContext context) {
     int? selectedIndex;
    List<String> doctorList = [
      "All",
      "General",
      "Cardiologist",
      "Dentist",
      "Orthopedics",
      "Urology ",
      "Eye Specialist",
    ];
    return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(doctorList.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only ( right: 8.0),
                      child: InkWell(
                      
                        borderRadius: BorderRadius.circular(44),
                        onTap: (){
                          setState(() {
                            selectedIndex=index;
                      
                          });
                      
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: selectedIndex==index?AppColors.darkTeal:AppColors.white,
                            border: Border.all(color: AppColors.darkTeal),
                            borderRadius: BorderRadius.circular(44),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(doctorList[index],style: Styles.smallTextSemiBold(selectedIndex==index?AppColors.white: AppColors.darkTeal),),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              );
  }
}
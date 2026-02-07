import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class DoctorDetailspage extends StatelessWidget {
  const DoctorDetailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
backgroundColor: AppColors.white,
        leading: Icon(Icons.arrow_back,),
        title: Text(Strings.doctorDetails),
        actions: [
          Padding(
            padding: const EdgeInsets.only (right:  24.0),
            child: Icon(Icons.favorite_outline,color: AppColors.grey800,),
          )
        ],
      ),
      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            
          ],
        ),
      ),),
    );
  }
}
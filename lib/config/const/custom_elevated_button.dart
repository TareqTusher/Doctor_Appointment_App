import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
   CustomElevatedButton({super.key, required this.text, required this.onPressed,this.bottomheight,this.topHeight});
final String text;
final VoidCallback onPressed;
double? bottomheight;
double? topHeight;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPressed ,
      child: Container(
      padding: EdgeInsets.only(bottom:bottomheight??0,top: topHeight??0 ),
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.midNightBlue,
          borderRadius: BorderRadius.circular(60)
        ),
        child: Center(child: Text(text,style: Styles.fontMedium(AppColors.white),)),
      ),
    );
  }
}
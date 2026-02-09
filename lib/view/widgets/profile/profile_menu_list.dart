import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class ProfileMenuList extends StatelessWidget {
  const ProfileMenuList({super.key, required this.text, required this.img, required this.onTap, this.rightImage});
  final String text;
  final String img;
  final VoidCallback onTap;
  final String? rightImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            children: [
              Image.asset(img, height: 24, width: 24),
              SizedBox(width: 8),
              Text(text, style: Styles.font18Normal(AppColors.grey500)),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/arrow-right.png',
              height: 14,
              width: 14,
              fit: BoxFit.cover,
            )
          ),
        ],
      ),
    );
  }
}

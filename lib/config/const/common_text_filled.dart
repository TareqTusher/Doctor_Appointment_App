import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonTextFilled extends StatelessWidget {
  const CommonTextFilled({
    super.key,
    required this.hintText,
    this.icon,
    this.color = AppColors.grey400,
    this.iconSize = 18, required this.onTap,
  });
  final String hintText;
  final IconData? icon;
  final Color? color;
  final double? iconSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      decoration: InputDecoration(
        prefixIcon: icon == null
            ? null
            : Icon(icon, size: iconSize!, color: AppColors.grey400),
        hintText: hintText,
        hintStyle: Styles.fontNormal(AppColors.grey400),
        fillColor: AppColors.grey50,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: color!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),

          borderSide: BorderSide(color: color!),
        ),
      ),
    );
  }
}

class CommonTextFilled1 extends StatelessWidget {
  const CommonTextFilled1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.grey400, width: 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: InkWell(
              onTap: (){},
              child: Image.asset('assets/images/calendar2.png',height: 18,width: 18,)),
          ),
          SizedBox(width: 8),

          Text("yg"),
        ],
      ),
    );
  }
}

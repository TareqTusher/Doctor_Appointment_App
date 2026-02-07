import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class SearchDoctor extends StatelessWidget {
  const SearchDoctor({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        fillColor: AppColors.grey200,
        filled: true,
        hintText: "Search doctor...",
        border: OutlineInputBorder(
          
        ),
        prefixIcon: Icon(
    Icons.search,
    color: Colors.grey,
        ),
      ),
    );
  }
}

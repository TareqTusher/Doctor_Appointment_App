import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:flutter/material.dart';

class GenderSelectWidget extends StatefulWidget {
  const GenderSelectWidget({super.key});

  @override
  State<GenderSelectWidget> createState() => _GenderSelectWidgetState();
}

class _GenderSelectWidgetState extends State<GenderSelectWidget> {
    String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return   DropdownButtonFormField(
                  decoration: InputDecoration(
                    fillColor: AppColors.grey50,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColors.grey400),
                    ),
                    enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),

                      borderSide: BorderSide(color: AppColors.grey400),
                    ),
                    focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),

                      borderSide: BorderSide(color: AppColors.grey400)
                    )
                  ),
                  initialValue: selectedGender,
                  hint: const Text("Select Gender"),
                  items: [
                    DropdownMenuItem(value: "Male", child: Text("Male")),
                    DropdownMenuItem(value: "FeMale", child: Text("Female")),
                  ],
                  onChanged: (val) {
                    setState(() {
                      selectedGender = val;
                    });
                  },
                );
  }
}
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/controller/sign_up/sign_up_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class GenderSelectWidget extends ConsumerWidget {
   GenderSelectWidget({super.key});

  String? selectedGender;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final notifier=ref.read(signUpProvider.notifier);
    final state=ref.watch(signUpProvider);
    return DropdownButtonFormField(
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

          borderSide: BorderSide(color: AppColors.grey400),
        ),
      ),
      initialValue:state.selectGender,
      hint: const Text("Select Gender"),
      items: [
        DropdownMenuItem(value: "Male", child: Text("Male")),
        DropdownMenuItem(value: "FeMale", child: Text("Female")),
      ],
      onChanged: (val) {
        
        /// notifier.selectGender("gender");
        selectedGender=val;
        
      },
    );
  }
}

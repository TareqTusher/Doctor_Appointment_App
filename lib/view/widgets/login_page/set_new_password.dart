import 'package:docotor_appointment_app/config/const/common_headers.dart';
import 'package:docotor_appointment_app/config/const/common_text_filled.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class SetNewPassword extends StatelessWidget {
  const SetNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Column(
                children: [
                  CommonHeaders(
                    image: 'assets/images/Vector.png',
                    title: Strings.createAccount,
                    description: Strings.helpYou,
                  ),
                  SizedBox(height: 32),
                  CommonTextFilled(
                    hintText: Strings.password,
                    icon: Icons.lock,
                  ),
                  SizedBox(height: 20),
                  CommonTextFilled(
                    hintText: Strings.confirmPassword,
                    icon: Icons.lock,
                  ),
                
                SizedBox(height: 32,),
                 CustomElevatedButton(
                    bottomheight: 12,
                    topHeight: 12,
                    text: Strings.resetPassword,
                    onPressed: () {},
                  ),
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:docotor_appointment_app/config/const/common_headers.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class VerifyEmailPage extends StatelessWidget {
   VerifyEmailPage({super.key});

  String? currentText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,

        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                CommonHeaders(
                  image: 'assets/images/Vector.png',
                  title: Strings.verifyCode,
                  description: Strings.enterCode,
                ),

                SizedBox(height: 32),

                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  cursorColor: Colors.black,
                  enableActiveFill: true,

                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(12),
                    fieldHeight: 56,
                    fieldWidth: 56,

                    activeFillColor: AppColors.grey200,
                    selectedFillColor: AppColors.grey200,
                    inactiveFillColor: AppColors.grey200,

                    activeColor: AppColors.grey200,
                    selectedColor: AppColors.grey200,
                    inactiveColor: AppColors.grey300,
                  ),

                  onChanged: (value) {},

                  onCompleted: (value) {},
                ),
                SizedBox(height: 32),
                CustomElevatedButton(text: Strings.verify, onPressed: () {}),
                SizedBox(height: 32),
                ButtonRowWidget(
                  text: Strings.didnNotCode,
                  buttonText: Strings.resend,
                  onTap: () {
                    router.push(AppRoutesPath.setNewPassword);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

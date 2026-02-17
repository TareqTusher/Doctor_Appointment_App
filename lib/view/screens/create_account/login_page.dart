import 'package:docotor_appointment_app/config/const/common_headers.dart';
import 'package:docotor_appointment_app/config/const/common_text_filled.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/const/validator_urls/utility.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/or_widget.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/sign_in_widget.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/social_media_filled_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailTEController=TextEditingController();
    final TextEditingController passTEController=TextEditingController();
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
                    title: Strings.welcome,
                    description: Strings.hope,
                  ),
                  SizedBox(height: 32),

                  CommonTextFilled(
                    hintText: Strings.yourEmail,
                    icon: Icons.email, onTap: () {
Utility().validateEmail(emailTEController.text.trim());


                      },
                  ),
                  SizedBox(height: 20),
                  CommonTextFilled(
                    hintText: Strings.password,
                    icon: Icons.lock, onTap: () {  },
                  ),
                
                  SizedBox(height: 20),
                  CustomElevatedButton(
                    bottomheight: 12,
                    topHeight: 12,
                    text: Strings.signIn,
                    onPressed: () {
                      router.push(AppRoutesPath.homePage);
                    },
                  ),
                  SizedBox(height: 24),
                  OrWidget(),

                  SizedBox(height: 24),

                  SocialMediaFilledWidget(),

                  SizedBox(height: 24),
                  InkWell(
                    onTap: () {
                      router.push(AppRoutesPath.forgotPassword);
                    },
                    child: Text(
                      Strings.forgotPass,
                      style: Styles.fontNormal(AppColors.blue),
                    ),
                  ),
                  SizedBox(height: 24),

                  ButtonRowWidget(
                    text: Strings.doNotAccount,
                    buttonText: Strings.signUp,
                    onTap: () {
                      router.push(AppRoutesPath.createAccount);
                    },
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

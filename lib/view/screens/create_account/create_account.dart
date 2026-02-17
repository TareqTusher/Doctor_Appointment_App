import 'package:docotor_appointment_app/config/const/common_headers.dart';
import 'package:docotor_appointment_app/config/const/common_text_filled.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/or_widget.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/sign_in_widget.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/social_media_filled_widget.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

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
                    hintText: Strings.yourName,
                    icon: Icons.person, onTap: () {  },
                  ),
                  SizedBox(height: 20),
                  CommonTextFilled(
                    hintText: Strings.yourEmail,
                    icon: Icons.email, onTap: () {  },
                  ),
                  SizedBox(height: 20),
                  CommonTextFilled(
                    hintText: Strings.password,
                    icon: Icons.lock, onTap: () {  },
                  ),
                  SizedBox(height: 8),

                  SizedBox(height: 20),
                  CustomElevatedButton(
                    bottomheight: 12,
                    topHeight: 12,
                    text: Strings.createAccount,
                    onPressed: () {

                      router.push(AppRoutesPath.fillProfile);
                    },
                  ),
                  SizedBox(height: 24),
                  OrWidget(),

                  SizedBox(height: 24),

                  SocialMediaFilledWidget(),

                  SizedBox(height: 24),
                  ButtonRowWidget(
                    text: Strings.createAccount,
                    buttonText: Strings.signIn,
                    onTap: () {
                      router.push(AppRoutesPath.loginPage,);
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

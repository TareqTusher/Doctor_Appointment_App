import 'package:docotor_appointment_app/config/const/common_headers.dart';
import 'package:docotor_appointment_app/config/const/common_text_filled.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/screens/login_page/create_account.dart';
import 'package:docotor_appointment_app/view/screens/login_page/verify_email_page.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: InkWell(
          
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>CreateAccount()));
          },
          child: Icon(Icons.arrow_back, color: AppColors.darkTeal)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                CommonHeaders(
                  image: 'assets/images/Vector.png',
                  title: Strings.forgotPass,
                  description: Strings.enterEmail,
                ),
                SizedBox(height: 32,),
                CommonTextFilled(hintText: Strings.yourEmail,icon: Icons.email,),
                                SizedBox(height: 32,),
                                CustomElevatedButton(text: Strings.sendCode, onPressed: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyEmailPage()));
                                })

              ],
            ),
          ),
        ),
      ),
    );
  }
}

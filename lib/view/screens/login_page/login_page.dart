 import 'package:docotor_appointment_app/config/const/common_headers.dart';
import 'package:docotor_appointment_app/config/const/common_social_media_button.dart';
import 'package:docotor_appointment_app/config/const/common_text_filled.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/screens/login_page/create_account.dart';
import 'package:docotor_appointment_app/view/screens/login_page/fill_profile.dart';
import 'package:docotor_appointment_app/view/screens/login_page/forgot_password.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/or_widget.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/sign_in_widget.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/social_media_filled_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              CommonHeaders(image: 'assets/images/Vector.png', title: Strings.welcome, description: Strings.hope,),
                  SizedBox(height: 32),
                
                  CommonTextFilled(
                    hintText: Strings.yourEmail,
                    icon: Icons.email,
                  ),
                  SizedBox(height: 20),
                  CommonTextFilled(
                    hintText: Strings.password,
                    icon: Icons.lock,
                  ),
                  SizedBox(height: 8,),
                  Align(
                    
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      
                      onTap: (){

Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                      },
                      child: Text(Strings.forgotPass,style: Styles.fontNormal(AppColors.grey400),))),
                  SizedBox(height: 20),
                  CustomElevatedButton(
                    bottomheight: 12,
                    topHeight: 12,
                    text: Strings.signIn,
                    onPressed: () {},
                  ),
                  SizedBox(height: 24),
                OrWidget(),

                  SizedBox(height: 24),

                SocialMediaFilledWidget(),

                  SizedBox(height: 24),
                        InkWell(
                          
                          onTap: (){
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                          },
                          child: Text(Strings.forgotPass,style: Styles.fontNormal(AppColors.blue),)),
                                            SizedBox(height: 24),

                ButtonRowWidget(text: Strings.doNotAccount, buttonText: Strings.signUp,onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));
                },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

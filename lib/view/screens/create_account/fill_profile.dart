import 'package:docotor_appointment_app/config/const/common_text_filled.dart';
import 'package:docotor_appointment_app/config/const/custom_elevated_button.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/gender_select_widget.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/show_dialog_widget.dart';
import 'package:flutter/material.dart';

class FillProfilePage extends StatefulWidget {
  const FillProfilePage({super.key});

  @override
  State<FillProfilePage> createState() => _FillProfilePageState();
}

class _FillProfilePageState extends State<FillProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,

        leading: InkWell(
          
          onTap: (){
            router.push(AppRoutesPath.createAccount);
          },
          child: Icon(Icons.arrow_back, size: 24, color: AppColors.black)),
        title: Text(
          Strings.fillProfile,
          style: Styles.largeTextSemiBold(AppColors.grey700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        color: AppColors.grey200.withValues(alpha: 0.45),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.person,
                        color: AppColors.grey300,
                        size: 160,
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      right: 8,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: AppColors.darkTeal,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: AppColors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                CommonTextFilled(hintText: 'Md Tariqul Islam'),
                SizedBox(height: 20),
                CommonTextFilled(hintText: 'NickName'),
                SizedBox(height: 20),
                CommonTextFilled(hintText: 'name@example.com'),
                SizedBox(height: 20),
                CommonTextFilled(
                  hintText: 'date of Birth',
                  icon: Icons.calendar_month,
                ),
                SizedBox(height: 20),
                GenderSelectWidget(),

                SizedBox(height: 32),
                CustomElevatedButton(
                  text: Strings.save,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return DialogWidget(description: Strings.yourAccount,);
                      },
                    );
                    Future.delayed(const Duration(seconds: 3), () {
                      // ignore: use_build_context_synchronously
                      Navigator.of(context).pop();
                    });
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

import 'package:docotor_appointment_app/config/const/common_row_elevated_button.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:docotor_appointment_app/view/widgets/profile/profile_menu_list.dart';
import 'package:flutter/material.dart';

class ProfileMenuListSection extends StatelessWidget {
  const ProfileMenuListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileMenuList(
          text: Strings.editProfile,
          img: "assets/images/user.png",
          onTap: () {},
        ),
        SizedBox(height: 12),
        Divider(height: 1, color: AppColors.grey200),
        SizedBox(height: 12),
        ProfileMenuList(
          text: Strings.favorite,
          img: "assets/images/love2.png",
          onTap: () {},
        ),
        SizedBox(height: 12),
        Divider(height: 1, color: AppColors.grey200),
        SizedBox(height: 12),
        ProfileMenuList(
          text: Strings.notifications,
          img: "assets/images/notification.png",
          onTap: () {
router.push(AppRoutesPath.notification);

          },
        ),
        SizedBox(height: 12),
        Divider(height: 1, color: AppColors.grey200),
        SizedBox(height: 12),
        ProfileMenuList(
          text: Strings.settings,
          img: "assets/images/setting.png",
          onTap: () {},
        ),
        SizedBox(height: 12),
        Divider(height: 1, color: AppColors.grey200),
        SizedBox(height: 12),
        ProfileMenuList(
          text: Strings.help,
          img: "assets/images/message.png",
          onTap: () {},
        ),
        SizedBox(height: 12),
        Divider(height: 1, color: AppColors.grey200),
        SizedBox(height: 12),
        ProfileMenuList(
          text: Strings.condtions,
          img: "assets/images/security.png",
          onTap: () {},
        ),
        SizedBox(height: 12),
        Divider(height: 1, color: AppColors.grey200),
        SizedBox(height: 12),
        InkWell(
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                padding: EdgeInsets.all(24),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      Strings.logout,
                      style: Styles.largeTextSemiBold(AppColors.darkTeal),
                    ),
                    SizedBox(height: 16),
                    Divider(height: 1, color: AppColors.grey200),
                    SizedBox(height: 16),

                    Text(
                      Strings.wantLogout,
                      style: Styles.font16SemiBold(AppColors.grey500),
                    ),
                    SizedBox(height: 24),
                    CommonRowElevatedButton(
                      leftBtnText: Strings.cancel,
                      rightBtnText: Strings.yesLogout,
                    ),
                  ],
                ),
              );
            },
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/logout.png", height: 24, width: 24),
              SizedBox(width: 8),
              Text(
                Strings.logout,
                style: Styles.font18Normal(AppColors.grey500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

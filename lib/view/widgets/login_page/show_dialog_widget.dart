import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
                          backgroundColor: AppColors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48),
                          ),
                          child: Container(
                            height: 418,
                            width: 338,

                            decoration: BoxDecoration(
                              color: AppColors.white,

                              borderRadius: BorderRadius.circular(48),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 42.0,
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.lightTeal,
                                        ),
                                      ),

                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        left: 0,
                                        bottom: 0,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColors.white,
                                            ),
                                            child: Icon(
                                              Icons.done,
                                              color: AppColors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    Strings.congratulation,
                                    style: Styles.largeTextSemiBold(
                                      AppColors.darkTeal,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    Strings.yourAccount,
                                    style: Styles.fontNormal(AppColors.grey500),
                                  ),

                                  SizedBox(height: 32),

                                  SpinKitFadingCircle(
                                    color: AppColors.grey500,
                                    size: 60.0,
                                  ),

                                ],
                              ),
                            ),
                          ),
                        );
  }
}
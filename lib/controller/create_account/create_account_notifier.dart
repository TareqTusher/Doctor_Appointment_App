import 'package:docotor_appointment_app/config/const/validator_urls/utility.dart';
import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:docotor_appointment_app/controller/create_account/create_account_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

class CreateAccountNotifier extends StateNotifier<CreateAccountState> {
  CreateAccountNotifier() : super(CreateAccountState());

  final TextEditingController emailTEController = TextEditingController();
  final TextEditingController passTEController = TextEditingController();

  Future<void> emailChecker() async {
    String? errorText;
    final email = emailTEController.text.trim();
    if (email.isEmpty) {
      errorText = "Email cannot be empty";
    } else if (!Utility().validateEmail(email)) {
      errorText = "please Enter valid Email ";
    }
    state = state.copyWith(
      isLoginProgress: true,
      emailErrorText: errorText,
      passErrorText: state.passErrorText,
    );
  }

  Future<void> passChecker() async {
    String? errorText;
    final password = passTEController.text.trim();
    if (password.isEmpty) {
      errorText = 'Password Cannot be Empty';
    } else if (Utility().validatePassword(password)) {
      errorText = "Password Should be 8 character";
    }
    state = state.copyWith(
      isLoginProgress: true,
      passErrorText: errorText,
      emailErrorText: state.emailErrorText,
    );
  }


Future<void>login()async{

if(passTEController.text.isNotEmpty&&emailTEController.text.isNotEmpty){
  router.push(AppRoutesPath.homePage);
}

}
  Future<void> validateAndSubmit() async {
    final email = emailTEController.text.trim();
    final password = passTEController.text.trim();

    String? emailErr;
    String? passwordErr;

    if (email.isEmpty) {
      emailErr = "Email cannot be empty";
    } else if (!Utility().validateEmail(email)) {
      emailErr = "Please enter a valid email";
    }

    if (password.isEmpty) {
      passwordErr = "Password cannot be empty";
    } else if (!Utility().validatePassword(password)) {
      passwordErr = "Please Enter Correct Password";
    }

    state = state.copyWith(
      isLoginProgress: false,
      emailErrorText: emailErr,
      passErrorText: passwordErr,
    );
  }
}

final createAccountProvider =
    StateNotifierProvider<CreateAccountNotifier, CreateAccountState>((ref) {
      return CreateAccountNotifier();
    });

import 'dart:async';

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
      errorText = "Please enter a valid email";
    }
    state = state.copyWith(emailErrorText: errorText);
  }

  Future<void> passChecker() async {
    String? errorText;
    final password = passTEController.text.trim();
    if (password.isEmpty) {
      errorText = 'Password cannot be empty';
    } else if (!Utility().validatePassword(password)) {
      errorText = "Password should be at least 8 characters";
    }
    state = state.copyWith(passErrorText: errorText);
  }

  Future<void> login() async {
    await emailChecker();
    await passChecker();

    if (state.emailErrorText != null || state.passErrorText != null) {
      state = state.copyWith(isLoginProgress: false);
      return;
    }

    state = state.copyWith(isLoginProgress: true);

    Timer(Duration(seconds: 2), () {
      state = state.copyWith(isLoginProgress: false);
      router.push(AppRoutesPath.homePage);
    });
  }
}

final createAccountProvider =
    StateNotifierProvider<CreateAccountNotifier, CreateAccountState>((ref) {
      return CreateAccountNotifier();
    });

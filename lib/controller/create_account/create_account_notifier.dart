import 'dart:async';
import 'dart:developer';

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
    state = state.copyWith(
      emailErrorText: errorText,
      passErrorText: state.passErrorText,
      isLoginProgress: state.isLoginProgress,
    );
  }

  Future<void> passChecker() async {
    String? errorText;
    final password = passTEController.text.trim();
    if (password.isEmpty) {
      errorText = 'Password cannot be empty';
    } else if (Utility().validatePassword(password)) {
      errorText = "Password should be at least 8 characters";
    }
    state = state.copyWith(
      emailErrorText: state.emailErrorText,
      passErrorText: errorText,
      isLoginProgress: state.isLoginProgress,
    );
  }

  Future<void> login() async {
    log("login Button");
    await emailChecker();
    await passChecker();
    log("login Button 2 :: ${state.passErrorText != null}");
    if (state.emailErrorText != null || state.passErrorText != null) {
      state = state.copyWith(isLoginProgress: false);
      return;
    }
    state = state.copyWith(isLoginProgress: true);

    await Future.delayed(const Duration(seconds: 3));
    state = state.copyWith(isLoginProgress: false);
    router.push(AppRoutesPath.homePage);
    log("login Button 2");
  }

  Future<void> pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1998),
      lastDate: DateTime(2028),
    );
    if (picked != null) {
      state = state.copyWith(selectedDate: picked);
    }
  }
}

final createAccountProvider =
    StateNotifierProvider<CreateAccountNotifier, CreateAccountState>((ref) {
      return CreateAccountNotifier();
    });
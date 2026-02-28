class CreateAccountState {
  bool? isLoginProgress;
<<<<<<< HEAD
   String? emailErrorText, passErrorText;
=======
  final String? emailErrorText, passErrorText;
   DateTime? selectedDate;
>>>>>>> 09b6c3e191c7bd4b2f9d6dcb00b357668993833c

  CreateAccountState({
    this.isLoginProgress = false,
    this.emailErrorText,
    this.passErrorText,
    this.selectedDate,
  });

  CreateAccountState copyWith({
    bool? isLoginProgress,
    String? emailErrorText,
    String? passErrorText,
    DateTime?selectedDate,
  }) {
    return CreateAccountState(
      isLoginProgress: isLoginProgress ?? this.isLoginProgress,
      emailErrorText: emailErrorText,
      passErrorText: passErrorText ,
<<<<<<< HEAD
=======
      selectedDate: selectedDate??this.selectedDate,
>>>>>>> 09b6c3e191c7bd4b2f9d6dcb00b357668993833c
    );
  }
}

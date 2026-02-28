class CreateAccountState {
  bool? isLoginProgress;
  final String? emailErrorText, passErrorText;
   DateTime? selectedDate;

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
      selectedDate: selectedDate??this.selectedDate,
    );
  }
}
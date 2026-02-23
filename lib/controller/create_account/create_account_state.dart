class CreateAccountState {
  bool? isLoginProgress;
   String? emailErrorText, passErrorText;

  CreateAccountState({
    this.isLoginProgress = false,
    this.emailErrorText,
    this.passErrorText,
  });

  CreateAccountState copyWith({
    bool? isLoginProgress,
    String? emailErrorText,
    String? passErrorText,
  }) {
    return CreateAccountState(
      isLoginProgress: isLoginProgress ?? this.isLoginProgress,
      emailErrorText: emailErrorText,
      passErrorText: passErrorText ,
    );
  }
}

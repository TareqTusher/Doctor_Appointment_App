class SignUpState {

String?selectGender;
DateTime?dateTime;

SignUpState({this.selectGender,this.dateTime});
SignUpState copyWith({String?selectedGender,DateTime?dateTime}){
  return SignUpState(selectGender: selectedGender??selectGender,dateTime: dateTime??dateTime);
}

}
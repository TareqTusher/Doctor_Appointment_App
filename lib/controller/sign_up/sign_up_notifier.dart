import 'package:docotor_appointment_app/controller/sign_up/sign_up_state.dart';
import 'package:flutter_riverpod/legacy.dart';

class SignUpNotifier extends StateNotifier<SignUpState> {
  SignUpNotifier():super(SignUpState());

Future<void> selectGender(String gender)async{
  state=state.copyWith(selectedGender: gender);
}

Future<void>dateSelect()async{

}
}
final signUpProvider=StateNotifierProvider<SignUpNotifier,SignUpState>((ref){
  return SignUpNotifier();
});
import 'package:docotor_appointment_app/controller/doctor_appointment/doctor_appointment_state.dart';
import 'package:flutter_riverpod/legacy.dart';

class DoctorAppointmentNotifier extends StateNotifier<DoctorAppointmentState> {
  DoctorAppointmentNotifier() : super(DoctorAppointmentState());

  Future<void> dateSelect(DateTime selectDate, DateTime focusdate) async {
    state = state.copyWith(
      selectedDay: selectDate,
      focusedDate: focusdate,
    );
  }

  void selectTime(String time) {
    state = state.copyWith(selectedTime: time);
  }

  void setDoctorName(String name) {
    state = state.copyWith(doctorName: name);
  }
}

final doctorAppointmentProvider =
    StateNotifierProvider<DoctorAppointmentNotifier, DoctorAppointmentState>(
        (ref) {
  return DoctorAppointmentNotifier();
});
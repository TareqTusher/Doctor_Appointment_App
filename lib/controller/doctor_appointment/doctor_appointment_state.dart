class DoctorAppointmentState {
  DateTime? selectedDay;
  DateTime? focusedDate = DateTime.now();
  String? selectedTime;
  String? doctorName;

  DoctorAppointmentState({
    this.selectedDay,
    this.focusedDate,
    this.selectedTime,
    this.doctorName,
  });

  DoctorAppointmentState copyWith({
    DateTime? selectedDay,
    DateTime? focusedDate,
    String? selectedTime,
    String? doctorName,
  }) {
    return DoctorAppointmentState(
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDate: focusedDate ?? this.focusedDate,
      selectedTime: selectedTime ?? this.selectedTime,
      doctorName: doctorName ?? this.doctorName,
    );
  }
}
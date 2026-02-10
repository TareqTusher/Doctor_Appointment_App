import 'package:docotor_appointment_app/config/const/hospital_details_card.dart';
import 'package:flutter/material.dart';

class HospitalSection extends StatelessWidget {
  const HospitalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: HospitalDetailsCard(
              imageUrl: 'assets/images/room1.png',
              clinicName: 'Sunrise Health Clinic',
              address: '123 Oak Street, CA 98765',
              rating: 5.0,
              reviewCount: 58,
              distance: '2.5 km',
              duration: '40min',
              facilityType: 'Hospital',
            ),
          );
        },
      ),
    );
  }
}

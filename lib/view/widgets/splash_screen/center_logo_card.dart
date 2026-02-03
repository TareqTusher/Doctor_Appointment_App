
import 'package:flutter/material.dart';

class CenterLogoCard extends StatelessWidget {
  const CenterLogoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A164B),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.medical_services_rounded,
            size: 48,
            color: Colors.white,
          ),
          SizedBox(height: 12),
          Text(
            "HealthPal",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

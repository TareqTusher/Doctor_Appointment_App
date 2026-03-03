import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/doc12.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.person, size: 30);
                  },
                ),
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Emily Anderson',
                  style: Styles.fontText16Bold(AppColors.grey700),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      '5.0',
                      style: Styles.fontText12SemiBold(AppColors.grey500),
                    ),
                    const SizedBox(width: 4),
                    ...List.generate(
                      5,
                      (index) =>
                          Icon(Icons.star, size: 14, color: Colors.amber[600]),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'Dr. Patel is a true professional who genuinely cares about his patients. I highly recommend Dr. Patel to',
          style: Styles.fontText12Normal(AppColors.grey500),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
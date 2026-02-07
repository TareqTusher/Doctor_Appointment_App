import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String location;
  final double rating;
  final String reviews;
  final String imageUrl;
final VoidCallback onTap;
  const DoctorCard({
    super.key,
    required this.name,
    required this.specialty,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.imageUrl, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey300,
              blurRadius: 5, 
            
            )],
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.deepPink,
              
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.person, size: 50, color: Colors.white);
                  },
                ),
              ),
            ),
            SizedBox(width: 12),
      
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name, style: Styles.fontBold(AppColors.grey800)),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.favorite_border,
                          color: Color(0xFF6B7280),
                          size: 24,
                        ),
                      ),
                    ],
                  ),
      
                  Divider(height: 1, color: AppColors.grey200),
                  SizedBox(height: 8),
                  Text(
                    specialty,
                    style: Styles.smallTextSemiBold(AppColors.grey600),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 14, color: AppColors.grey400),
                      SizedBox(width: 4),
                      Text(
                        location,
                        style: Styles.fontNormal(AppColors.grey600),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, size: 16, color: AppColors.orangeStar),
                     
      
                      Text(
                        rating.toString(),
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                       SizedBox(width: 4,),
                      Container(
                        height: 16,
                        width: 1,
                        color: AppColors.grey300,
                      ),
                      SizedBox(width: 4,),
                      Text(
                        reviews,
                       style: Styles.fontNormal(AppColors.grey500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

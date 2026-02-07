import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:flutter/material.dart';

class HospitalDetailsCard extends StatelessWidget {
  final String imageUrl;
  final String clinicName;
  final String address;
  final double rating;
  final int reviewCount;
  final String distance;
  final String duration;
  final String facilityType;

  const HospitalDetailsCard({
    super.key,
    required this.imageUrl,
    required this.clinicName,
    required this.address,
    required this.rating,
    required this.reviewCount,
    required this.distance,
    required this.duration,
    required this.facilityType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey200,
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              imageUrl,
              height: 160,
              
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 160,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.image, size: 50, color: Colors.grey),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  clinicName,
                  style:Styles.fontBold(AppColors.grey600),
                ),
                 SizedBox(height: 8),

                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 16,
                      color: AppColors.grey500,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        address,
                        style: Styles.fontSmallNormal(AppColors.grey400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Row(
                  children: [
                    Text(
                      rating.toStringAsFixed(1),
                      style: Styles.fontSmallNormal(AppColors.grey400),
                    ),
                    const SizedBox(width: 4),
                    ...List.generate(5, (index) {
                      return Icon(
                        index < rating.floor()
                            ? Icons.star
                            : Icons.star_border,
                        size: 16,
                        color: AppColors.orangeStar,
                      );
                    }),
                    const SizedBox(width: 4),
                    Text(
                      '($reviewCount Reviews)',
                     style: Styles.fontSmallNormal(AppColors.grey400),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Divider(

                  height: 1,
                  color: AppColors.grey100,
                ),
                                const SizedBox(height: 12),


                Row(
                  children: [
                    Icon(
                      Icons.directions_outlined,
                      size: 16,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$distance/$duration',
                      style: Styles.fontSmallNormal(AppColors.grey400),
                    ),
                    const SizedBox(width: 16),

                    Icon(
                      Icons.local_hospital_outlined,
                      size: 16,
                      color: AppColors.grey400,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      facilityType,
                      style: Styles.fontSmallNormal(AppColors.grey400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

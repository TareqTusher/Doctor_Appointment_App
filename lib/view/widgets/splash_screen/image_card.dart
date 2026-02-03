import 'package:flutter/material.dart';
class ImageCard extends StatelessWidget {
  final String image;

  const ImageCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      
      child: Image.asset(image,height: 180,width: 100,fit: BoxFit.cover,),
    );
  }
}
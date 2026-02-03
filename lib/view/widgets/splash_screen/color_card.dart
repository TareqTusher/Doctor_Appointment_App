
import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  final Color color;

  const ColorCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
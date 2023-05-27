import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:flutter/material.dart';

class QuickLinksRow extends StatelessWidget {
  const QuickLinksRow({Key? key, required this.imageUrl, required this.text})
      : super(key: key);
  final String imageUrl;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl),
        Text(
          text,
          style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryDark),
        )
      ],
    );
  }
}

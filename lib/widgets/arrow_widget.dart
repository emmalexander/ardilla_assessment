import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';

class ArrowWidget extends StatelessWidget {
  const ArrowWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyle.tinyText.copyWith(color: AppColors.primary),
        ),
        const Icon(
          Icons.arrow_forward,
          size: 13,
          color: AppColors.primary,
        ),
      ],
    );
  }
}

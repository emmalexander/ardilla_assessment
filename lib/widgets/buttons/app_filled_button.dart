import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String text;
  final Color color;
  final Color? textColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: AppColors.white,
        side: BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          text,
          style: AppTextStyle.bodySemiBold.copyWith(color: textColor),
        ),
      ),
    );
  }
}

import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';

class AppOutlinedIconButton extends StatelessWidget {
  const AppOutlinedIconButton(
      {Key? key, required this.text, this.onPressed, required this.icon})
      : super(key: key);
  final String text;
  final VoidCallback? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: Icon(icon),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.primary,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          text,
          style: AppTextStyle.bodySemiBold,
        ),
      ),
    );
  }
}

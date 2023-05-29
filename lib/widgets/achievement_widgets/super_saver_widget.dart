import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';

class SuperSaverWidget extends StatelessWidget {
  const SuperSaverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/trophy.png',
          height: 35,
        ),
        Text(
          'Super Saver',
          style: AppTextStyle.vvTinyText.copyWith(color: AppColors.primaryDark),
        ),
      ],
    );
  }
}

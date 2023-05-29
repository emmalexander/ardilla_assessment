import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          border: const Border.fromBorderSide(
            BorderSide(color: AppColors.white),
          )),
      child: Center(
        child: Text(
          'Coming Soon',
          style: AppTextStyle.vvTinyText.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}

import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/widgets/coming_soon.dart';
import 'package:flutter/material.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.bodySemiBold
                .copyWith(fontWeight: FontWeight.w500, color: AppColors.white),
          ),
          Text(
            subtitle,
            style: AppTextStyle.vTinyText.copyWith(color: AppColors.white),
          ),
          const ComingSoon(),
        ],
      ),
    );
  }
}

import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/icomoon_icons.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/widgets/quick_links_row.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class QuickLinksSection extends StatelessWidget {
  const QuickLinksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Links',
          style: AppTextStyle.smallSemi.copyWith(
              fontWeight: FontWeight.w500, color: AppColors.primaryDark),
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            QuickLinksRow(
              iconData: Icomoon.roundedStars,
              color: AppColors.primary,
              text: 'SAN',
            ),
            QuickLinksRow(
              iconData: Icomoon.saveIcon,
              color: AppColors.secondary,
              text: 'Save',
            ),
            QuickLinksRow(
              iconData: Icomoon.book,
              color: AppColors.teal,
              text: 'Learn',
            ),
            QuickLinksRow(
              iconData: FluentIcons.payment_24_regular,
              color: AppColors.amber,
              text: 'Payment',
            ),
          ],
        )
      ],
    );
  }
}

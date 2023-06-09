import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';

class AchievementContainer extends StatelessWidget {
  const AchievementContainer({
    Key? key,
    required this.backgroundColor,
    required this.topTitle,
    required this.title,
    required this.subtitle,
    this.smallBottomWidget,
    this.backgroundImage,
    required this.alignment,
    required this.rightImageUrl,
    required this.rightPadding,
    required this.titleTextColor,
    this.smallBottomWidgetPadding,
  }) : super(key: key);
  final Color backgroundColor;
  final String topTitle;
  final String title;
  final Color titleTextColor;
  final String subtitle;
  final Widget? smallBottomWidget;
  final EdgeInsets? smallBottomWidgetPadding;
  final Widget? backgroundImage;
  final Alignment alignment;
  final String rightImageUrl;
  final EdgeInsets rightPadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topTitle,
          style: AppTextStyle.bodySemi.copyWith(
              fontWeight: FontWeight.w500, color: AppColors.primaryDark),
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 340,
            height: 200,
            decoration: BoxDecoration(
              color: backgroundColor,
            ),
            child: Stack(
              children: [
                backgroundImage ?? const SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 32, bottom: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyle.headerFourBold
                            .copyWith(color: titleTextColor),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 150,
                        child: Text(
                          subtitle,
                          style: AppTextStyle.vTinyText
                              .copyWith(color: AppColors.primaryDark),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: smallBottomWidgetPadding ?? EdgeInsets.zero,
                        child: smallBottomWidget ?? const SizedBox(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: rightPadding,
                  child: Align(
                      alignment: alignment,
                      child: Image.asset(
                        rightImageUrl,
                        height: 130,
                      )),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

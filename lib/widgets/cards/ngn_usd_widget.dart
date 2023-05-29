import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';

class NGNUSDWidget extends StatelessWidget {
  const NGNUSDWidget(
      {Key? key,
      required this.inactiveColor,
      required this.activeColor,
      required this.rateColor,
      required this.onNgnPressed,
      required this.onUsdPressed,
      required this.ngnSelected,
      required this.usdSelected})
      : super(key: key);
  final Color inactiveColor;
  final Color activeColor;
  final Color rateColor;
  final VoidCallback onNgnPressed;
  final VoidCallback onUsdPressed;
  final bool ngnSelected;
  final bool usdSelected;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 10,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.primaryDark.withOpacity(.1)),
          child: Row(
            children: [
              GestureDetector(
                onTap: onNgnPressed,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color: ngnSelected ? AppColors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    'NGN',
                    style: AppTextStyle.tinyText.copyWith(
                        color: ngnSelected ? activeColor : inactiveColor),
                  ),
                ),
              ),
              GestureDetector(
                onTap: onUsdPressed,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color: usdSelected ? AppColors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    'USD',
                    style: AppTextStyle.tinyText.copyWith(
                        color: usdSelected ? activeColor : inactiveColor),
                  ),
                ),
              )
            ],
          ),
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              '\u20A6',
              style: AppTextStyle.tinyTextBold
                  .copyWith(fontFamily: '', color: rateColor),
            ),
            Text(
              '740 /\$1',
              style: AppTextStyle.tinyTextBold.copyWith(color: rateColor),
            ),
          ],
        )
      ],
    );
  }
}

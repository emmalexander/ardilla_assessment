import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/app_constants.dart';
import 'package:ardilla_assessment/widgets/arrow_widget.dart';
import 'package:flutter/material.dart';

class InvestmentPageView extends StatelessWidget {
  const InvestmentPageView({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 350,
            height: 250,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12)),
                        child: Image.asset(investmentBlurImages[index])),
                    Image.asset(investmentImages[index]),
                  ],
                ),
                const SizedBox(height: 13),
                SizedBox(
                  width: 180,
                  child: Text(
                    investmentTitles[index],
                    style: const TextStyle(
                        fontSize: 15,
                        color: AppColors.primaryDark,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 13),
                Text(
                  '${investmentPercents[index]}% Monthly ROI',
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 13),
                ArrowWidget(text: investmentActionText[index]),
              ],
            ),
          );
        });
  }
}

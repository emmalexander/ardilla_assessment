import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/widgets/explore/explore_widget.dart';
import 'package:flutter/material.dart';

class ExploreSection extends StatelessWidget {
  const ExploreSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Explore',
            style: AppTextStyle.bodySemiBold.copyWith(
                color: AppColors.primaryDark, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: 1069,
            height: 197,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/explore_background.png')),
                color: AppColors.primaryDark,
                borderRadius: BorderRadius.circular(10)),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExploreWidget(
                  title: 'My Family and I',
                  subtitle: 'A Family that stay together stays forever',
                ),
                SizedBox(height: 90, child: VerticalDivider()),
                ExploreWidget(
                  title: 'Invest With Hargon',
                  subtitle: 'Loan as an investment',
                ),
                SizedBox(height: 90, child: VerticalDivider()),
                ExploreWidget(
                  title: 'Business with Ardilla',
                  subtitle: 'A Partnership where you Earn!',
                ),
                SizedBox(height: 90, child: VerticalDivider()),
                ExploreWidget(
                  title: 'Tax Save',
                  subtitle: 'Where you save while spending',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

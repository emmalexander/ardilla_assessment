import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/widgets/arrow_widget.dart';
import 'package:flutter/material.dart';

class InvestmentContainer extends StatelessWidget {
  const InvestmentContainer(
      {Key? key,
      required this.blurUrl,
      required this.imageUrl,
      required this.title,
      required this.percentage,
      required this.arrowText})
      : super(key: key);
  final String blurUrl;
  final String imageUrl;
  final String title;
  final String percentage;
  final String arrowText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.offWhite,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(12)),
                      child: Image.asset(blurUrl)),
                  Image.asset(imageUrl),
                ],
              ),
              const SizedBox(height: 13),
              SizedBox(
                width: 180,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 15,
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 13),
              Text(
                '$percentage% Monthly ROI',
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 13),
              ArrowWidget(text: arrowText),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:flutter/material.dart';

class QuickLinksRow extends StatelessWidget {
  const QuickLinksRow(
      {Key? key,
      required this.text,
      required this.color,
      required this.iconData})
      : super(key: key);
  final Color color;
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          child: Stack(
            children: [
              Positioned(
                right: 5,
                bottom: 5,
                child: Container(
                  width: 50,
                  height: 70,
                  decoration: BoxDecoration(
                      color: color.withOpacity(.3),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(
                    iconData,
                    color: AppColors.white,
                    size: 34,
                  ),
                ),
              )
            ],
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryDark),
        )
      ],
    );
  }
}

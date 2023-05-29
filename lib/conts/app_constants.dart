import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/widgets/intro/introduction.dart';
import 'package:flutter/material.dart';

final List<Introduction> list = [
  Introduction(
    title: 'Lorem Ipsum Kip Antares Lorem',
    titleTextStyle:
        AppTextStyle.headerOneBold.copyWith(color: AppColors.primaryDark),
    subTitle:
        'Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.',
    subTitleTextStyle: AppTextStyle.tinyText.copyWith(color: Colors.grey),
    imageUrl: 'assets/onboarding.png',
  ),
  Introduction(
    title: 'Lorem Ipsum Kip Antares Lorem',
    titleTextStyle:
        AppTextStyle.headerOneBold.copyWith(color: AppColors.primaryDark),
    subTitle:
        'Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.',
    subTitleTextStyle: AppTextStyle.tinyText.copyWith(color: Colors.grey),
    imageUrl: 'assets/onboarding.png',
  ),
  Introduction(
    title: 'Lorem Ipsum Kip Antares Lorem',
    titleTextStyle:
        AppTextStyle.headerOneBold.copyWith(color: AppColors.primaryDark),
    subTitle:
        'Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.',
    subTitleTextStyle: AppTextStyle.tinyText.copyWith(color: Colors.grey),
    imageUrl: 'assets/onboarding.png',
  ),
  Introduction(
    title: 'Lorem Ipsum Kip Antares Lorem',
    titleTextStyle:
        AppTextStyle.headerOneBold.copyWith(color: AppColors.primaryDark),
    subTitle:
        'Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.',
    subTitleTextStyle: AppTextStyle.tinyText.copyWith(color: Colors.grey),
    imageUrl: 'assets/onboarding.png',
  ),
];

RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
String mathFunc(Match match) => '${match[1]},';

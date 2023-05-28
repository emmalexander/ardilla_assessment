import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';

import 'widgets/intro/introduction.dart';
import 'widgets/intro/introscreenonboarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Introduction> list = [
      const Introduction(
        title: 'Lorem Ipsum Kip Antares Lorem',
        titleTextStyle: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryDark,
        ),
        subTitle:
            'Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.',
        subTitleTextStyle: TextStyle(fontSize: 12, color: Colors.grey),
        imageUrl: 'assets/onboarding.png',
      ),
      const Introduction(
        title: 'Lorem Ipsum Kip Antares Lorem',
        titleTextStyle: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryDark,
        ),
        subTitle:
            'Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.',
        subTitleTextStyle: TextStyle(fontSize: 12, color: Colors.grey),
        imageUrl: 'assets/onboarding.png',
      ),
      const Introduction(
        title: 'Lorem Ipsum Kip Antares Lorem',
        titleTextStyle: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryDark,
        ),
        subTitle:
            'Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.',
        subTitleTextStyle: TextStyle(fontSize: 12, color: Colors.grey),
        imageUrl: 'assets/onboarding.png',
      ),
      const Introduction(
        title: 'Lorem Ipsum Kip Antares Lorem',
        titleTextStyle: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryDark,
        ),
        subTitle:
            'Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.',
        subTitleTextStyle: TextStyle(fontSize: 12, color: Colors.grey),
        imageUrl: 'assets/onboarding.png',
      ),
    ];

    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignUp(),
          ), //MaterialPageRoute
        );
      },
      skipTextStyle: const TextStyle(fontWeight: FontWeight.w700),
    );
  }
}

import 'package:ardilla_assessment/conts/app_constants.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/screens/sign_up/sign_up.dart';
import 'package:ardilla_assessment/widgets/intro/introscreenonboarding.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static const id = 'on_boarding_screen';
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.pushReplacementNamed(context, SignUp.id);
      },
      skipTextStyle: AppTextStyle.bodySemiBold,
    );
  }
}

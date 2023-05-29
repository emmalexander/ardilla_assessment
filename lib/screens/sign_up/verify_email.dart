import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/screens/sign_up/register_profile.dart';
import 'package:ardilla_assessment/widgets/buttons/app_filled_button.dart';
import 'package:ardilla_assessment/widgets/buttons/app_outlined_button.dart';
import 'package:flutter/material.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({Key? key}) : super(key: key);
  static const id = 'verify_email_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.primaryDark,
                      )),
                ),
              ],
            ),
            Image.asset('assets/verify_email.png'),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                'Verify your email address',
                textAlign: TextAlign.center,
                style: AppTextStyle.headerTwoBold
                    .copyWith(color: AppColors.primaryDark),
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppOutlinedButton(
                  text: 'Open Email App',
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                AppFilledButton(
                    text: 'Continue',
                    color: AppColors.primary,
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterProfile.id);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

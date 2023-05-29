import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/screens/dashboard.dart';
import 'package:ardilla_assessment/screens/sign_up/sign_up.dart';
import 'package:ardilla_assessment/widgets/buttons/app_filled_button.dart';
import 'package:ardilla_assessment/widgets/buttons/app_outlined_icon_button.dart';
import 'package:ardilla_assessment/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);
  static const id = 'login_screen';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/top.png')),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 670,
                decoration: const BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 35),
                height: 650,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome !',
                      style: AppTextStyle.headerOneBold
                          .copyWith(color: AppColors.primaryDark),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Here’s how to Log in to access your account',
                      style: AppTextStyle.tinyText.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(
                        label: 'Email address or Kode Hex',
                        prefixIcon: Icon(Icons.email_outlined)),
                    const SizedBox(height: 20),
                    CustomTextField(
                      label: 'Password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: AppTextStyle.smallSemi.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppFilledButton(
                          text: 'Log In',
                          color: AppColors.primary,
                          onPressed: () => Navigator.pushReplacementNamed(
                              context, Dashboard.id)),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(width: 100, child: Divider()),
                        Text(
                          'Or',
                          style: AppTextStyle.tinyText
                              .copyWith(color: Colors.grey),
                        ),
                        const SizedBox(width: 100, child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppOutlinedIconButton(
                        text: 'Sign in with SAN ID',
                        icon: Icons.login,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: Wrap(
                        spacing: 2,
                        children: [
                          Text(
                            'New user? ',
                            style: AppTextStyle.tinyText
                                .copyWith(color: Colors.black54),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, SignUp.id);
                            },
                            child: Text(
                              'Create Account',
                              style: AppTextStyle.tinyText
                                  .copyWith(color: AppColors.primary),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/screens/log_in.dart';
import 'package:ardilla_assessment/widgets/buttons/app_filled_button.dart';
import 'package:ardilla_assessment/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterProfile extends StatelessWidget {
  const RegisterProfile({Key? key}) : super(key: key);
  static const id = 'register_profile_screen';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
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
                SizedBox(
                  width: 250,
                  child: Text(
                    'Complete your profile',
                    style: AppTextStyle.headerOneBold
                        .copyWith(color: AppColors.primaryDark),
                  ),
                ),
                const SizedBox(height: 30),
                const CustomTextField(
                    label: 'Username',
                    prefixIcon: Icon(
                      CupertinoIcons.chevron_left_slash_chevron_right,
                    )),
                const SizedBox(height: 16),
                const CustomTextField(
                    label: 'First Name',
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                      size: 24,
                    )),
                const SizedBox(height: 16),
                const CustomTextField(
                    label: 'Last Name',
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                      size: 24,
                    )),
                const SizedBox(height: 16),
                const CustomTextField(
                    label: 'Phone Number',
                    prefixIcon: Icon(
                      CupertinoIcons.device_phone_portrait,
                    )),
                const SizedBox(height: 16),
                const CustomTextField(
                    label: 'Invite code (optional)',
                    prefixIcon: Icon(
                      Icons.people_outlined,
                      size: 24,
                    )),
                const SizedBox(height: 16),
                const CustomTextField(
                    label: 'Password',
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 24,
                    )),
                const SizedBox(height: 50),
                Wrap(
                  spacing: 2,
                  children: [
                    Text(
                      'By Signing Up , You’re agreeing to our',
                      style:
                          AppTextStyle.tinyText.copyWith(color: Colors.black54),
                    ),
                    Text(
                      'Terms and Conditions',
                      style: AppTextStyle.tinyText
                          .copyWith(color: AppColors.primary),
                    ),
                    Text(
                      'and',
                      style:
                          AppTextStyle.tinyText.copyWith(color: Colors.black54),
                    ),
                    Text(
                      'Privacy Policy',
                      style: AppTextStyle.tinyText
                          .copyWith(color: AppColors.primary),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.maxFinite,
                  child: AppFilledButton(
                      text: 'Continue',
                      color: AppColors.primary,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, LogIn.id);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

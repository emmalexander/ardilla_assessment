import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterProfile extends StatelessWidget {
  const RegisterProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 100),
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
            const SizedBox(
              width: 250,
              child: Text(
                'Complete your profile',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: AppColors.primaryDark,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const CustomTextField(
                label: 'Username',
                prefixIcon: CupertinoIcons.chevron_left_slash_chevron_right),
            const CustomTextField(
                label: 'First Name', prefixIcon: Icons.person_outline_rounded),
            const CustomTextField(
                label: 'Last Name', prefixIcon: Icons.person_outline_rounded),
            const CustomTextField(
                label: 'Phone Number',
                prefixIcon: CupertinoIcons.device_phone_portrait),
            const CustomTextField(
                label: 'Invite code (optional)',
                prefixIcon: Icons.people_outline),
            const CustomTextField(
                label: 'Password', prefixIcon: Icons.lock_outline),
            const SizedBox(height: 20),
            const Wrap(
              spacing: 2,
              children: [
                Text('By Signing Up , You’re agreeing to our'),
                Text(
                  'Terms and Conditions',
                  style: TextStyle(color: AppColors.primary),
                ),
                Text('and'),
                Text(
                  'Privacy Policy',
                  style: TextStyle(color: AppColors.primary),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.maxFinite,
              child: OutlinedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

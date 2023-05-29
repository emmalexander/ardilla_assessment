import 'package:ardilla_assessment/blocs/user_bloc.dart';
import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/screens/log_in.dart';
import 'package:ardilla_assessment/screens/sign_up/verify_email.dart';
import 'package:ardilla_assessment/widgets/buttons/app_filled_button.dart';
import 'package:ardilla_assessment/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static const id = 'sign_up_screen';

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
                      'Get Started',
                      style: AppTextStyle.headerOneBold
                          .copyWith(color: AppColors.primaryDark),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'To Create an account enter a valid email address',
                      style: AppTextStyle.tinyText.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                        onChanged: (value) {
                          context
                              .read<UserBloc>()
                              .add(EmailEvent(email: value));
                        },
                        label: 'Email address',
                        prefixIcon: const Icon(Icons.email_outlined)),
                    const Spacer(),
                    BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            AppFilledButton(
                              onPressed: state.email.isEmpty
                                  ? null
                                  : () {
                                      Navigator.pushNamed(
                                          context, VerifyEmail.id);
                                    },
                              text: 'Continue',
                              color: state.email.isEmpty
                                  ? Colors.grey.shade300
                                  : AppColors.primary,
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: Wrap(
                        spacing: 2,
                        children: [
                          Text(
                            'Already have an account?',
                            style: AppTextStyle.tinyText
                                .copyWith(color: Colors.black54),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, LogIn.id);
                            },
                            child: Text(
                              'Sign in',
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
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

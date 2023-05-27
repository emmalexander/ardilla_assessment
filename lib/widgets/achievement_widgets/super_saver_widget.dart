import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:flutter/material.dart';

class SuperSaverWidget extends StatelessWidget {
  const SuperSaverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/trophy.png'),
        const Text(
          'Super Saver',
          style: TextStyle(fontSize: 8, color: AppColors.primaryDark),
        ),
      ],
    );
  }
}

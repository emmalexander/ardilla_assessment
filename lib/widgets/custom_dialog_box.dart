import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/screens/log_in.dart';
import 'package:flutter/material.dart';

class CustomDialogBox extends StatelessWidget {
  const CustomDialogBox({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
      buttonPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: AppColors.primaryDark,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, LogIn.id),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.secondary.withOpacity(.1)),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        color: AppColors.secondary,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text('No, Cancel')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

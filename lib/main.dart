import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/screens/splash.dart';
import 'package:flutter/material.dart';

import 'screens/sign_up/register_profile.dart';
import 'screens/sign_up/verify_email.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8807F7)),
          useMaterial3: true,
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: AppColors.primary),
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white)),
          fontFamily: 'CabinetGrotesk'),
      home: const RegisterProfile(),
    );
  }
}

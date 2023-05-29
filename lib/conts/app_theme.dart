import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static final appThemeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8807F7)),
      useMaterial3: true,
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColors.primary),
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white)),
      fontFamily: 'CabinetGrotesk');
}

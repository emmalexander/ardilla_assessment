import 'package:ardilla_assessment/screens/dashboard.dart';
import 'package:ardilla_assessment/screens/log_in.dart';
import 'package:ardilla_assessment/screens/on_boarding_screen.dart';
import 'package:ardilla_assessment/screens/sign_up/register_profile.dart';
import 'package:ardilla_assessment/screens/sign_up/sign_up.dart';
import 'package:ardilla_assessment/screens/sign_up/verify_email.dart';
import 'package:ardilla_assessment/screens/splash.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashScreen.id:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case OnBoardingScreen.id:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case SignUp.id:
        return MaterialPageRoute(builder: (context) => const SignUp());
      case VerifyEmail.id:
        return MaterialPageRoute(builder: (context) => const VerifyEmail());
      case RegisterProfile.id:
        return MaterialPageRoute(builder: (context) => const RegisterProfile());
      case LogIn.id:
        return MaterialPageRoute(builder: (context) => const LogIn());
      case Dashboard.id:
        return MaterialPageRoute(builder: (context) => const Dashboard());
      default:
        return null;
    }
  }
}

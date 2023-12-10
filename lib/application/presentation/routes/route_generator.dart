import 'package:assignment_wandoor_kayla/application/presentation/screens/student/add_student.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/get_otp.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/sign_in.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/sign_up.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/verify_otp.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/student/home.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/splash/splash.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    //final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.signInPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenSignIn());
      case Routes.signUpPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenSignUp());
      case Routes.otpPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenOtp());
      case Routes.verifyOtpPage:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenOtpVerification());
      case Routes.homePage:
        return MaterialPageRoute(builder: (ctx) => const ScreenHome());
      case Routes.addStudentPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenAddStudent());
      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Error while navigating')),
      );
    });
  }
}

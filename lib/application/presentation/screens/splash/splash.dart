import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      sizeFinder(context);
     // Timer(const Duration(seconds: 1), () {
        Navigator.pushNamed(context, Routes.verifyOtpPage);
       //});
     });
    return const Scaffold(backgroundColor: kBlueLight,);
  }
}
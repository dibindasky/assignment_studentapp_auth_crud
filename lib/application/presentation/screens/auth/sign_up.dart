import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/widgets/sign_up_body.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';

final signupKey = GlobalKey<FormState>();

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(sWidth * 0.12),
          child: Form(
            key: signupKey,
            child: const SignUpBody(),
          ),
        ),
      ),
    );
  }
}
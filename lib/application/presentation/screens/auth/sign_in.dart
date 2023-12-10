import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/widgets/sign_in_body.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';

final signInKey = GlobalKey<FormState>();

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(sWidth * 0.12),
          child: Form(
            key: signInKey,
            child: const SignInBody(),
          ),
        ),
      ),
    );
  }
}

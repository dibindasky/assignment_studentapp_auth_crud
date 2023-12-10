import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/sign_in.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/student/home.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueLight,
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          return snapshot.connectionState == ConnectionState.waiting
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : snapshot.hasData
                  ? const ScreenHome()
                  : const ScreenSignIn();
        }),
      ),
    );
  }
}

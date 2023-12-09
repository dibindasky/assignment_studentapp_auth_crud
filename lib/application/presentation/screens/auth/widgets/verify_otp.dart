import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

final otpKey = GlobalKey<FormState>();

class ScreenOtpVerification extends StatelessWidget {
  const ScreenOtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(sWidth * 0.1),
        child: Form(key: otpKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Verifiy Otp',
                style: kronOne(fontSize: 0.05),
              ),
              kHeight30,
              Pinput(
                length: 6,
                controller: context.read<AuthBloc>().otpController,
                onCompleted: (value){
                  Navigator.pushNamed(context, Routes.homePage);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

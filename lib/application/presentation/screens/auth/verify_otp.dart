import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/loader/loader.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/snack_show/snack_show.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

final otpKey = GlobalKey<FormState>();

class ScreenOtpVerification extends StatelessWidget {
  const ScreenOtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    print('verify otp------------1');
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(sWidth * 0.1),
        child: Form(
          key: otpKey,
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.hasError) {
                showSnack(
                    context: context, message: state.message!, color: kRed);
              }
              if (state.otpSuccess != null) {
                state.otpSuccess!
                    ? Navigator.pushNamedAndRemoveUntil(
                        context, Routes.homePage, (route) => false)
                    : Navigator.pop(context);
              }
            },
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  length: 6,
                  controller: context.read<AuthBloc>().otpController,
                ),
                kHeight10,
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    if(state.isLoading){
                      return const LoadingAnimation(width: 0.20);
                    }
                    return Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(
                                  AuthEvent.verifyOtp(
                                    otpModel: OtpModel(
                                      smsCode: context
                                          .read<AuthBloc>()
                                          .otpController
                                          .text
                                          .trim(),
                                    ),
                                  ),
                                );
                          },
                          child: Text(
                            'Submit',
                            style: abel(
                                fontSize: 0.05,
                                color: kBlueDark,
                                fontWeight: FontWeight.w600),
                          )),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

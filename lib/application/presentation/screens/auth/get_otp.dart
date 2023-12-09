import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/loader/loader.dart';
import 'package:assignment_wandoor_kayla/application/presentation/widgets/text_form_field.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/phone_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

final phoneKey = GlobalKey<FormState>();

class ScreenOtp extends StatelessWidget {
  const ScreenOtp({super.key});

  @override
  Widget build(BuildContext context) {
    print('get otp -----------1');
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(sWidth * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: phoneKey,
              child: CustomTextFormField(
                hintText: 'Enter your phone number',
                controller: context.read<AuthBloc>().phoneController,
                icon: Iconsax.mobile,
                textInputType: TextInputType.phone,
              ),
            ),
            kHeight20,
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if(!state.hasError && state.otpVerificationId != null){
                  Navigator.pushNamed(context, Routes.verifyOtpPage);
                }
              },
              builder: (context, state) {
                if(state.isLoading){
                  return const LoadingAnimation(width: 0.20);
                }
                return ElevatedButton(
                  onPressed: () {
                    if (phoneKey.currentState!.validate()) {
                      context.read<AuthBloc>().add(AuthEvent.getOtp(
                          phoneModel: PhoneModel(
                              phone: context
                                  .read<AuthBloc>()
                                  .phoneController
                                  .text
                                  .trim())));
                    }
                  },
                  style: elevatedButtonStyle,
                  child: const Text('Get-otp'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

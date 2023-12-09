import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

final phoneKey = GlobalKey<FormState>();

class ScreenOtp extends StatelessWidget {
  const ScreenOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(sWidth * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(key: phoneKey,
              child: CustomTextFormField(
                hintText: 'Enter your phone number',
                controller: context.read<AuthBloc>().phoneController,
                icon: Iconsax.mobile,
                textInputType: TextInputType.phone,
              ),
            ),
            kHeight20,
            ElevatedButton(
              onPressed: () {
                if (phoneKey.currentState!.validate()) {
                  print('get otp success');
                  Navigator.pushNamed(context, Routes.verifyOtpPage);
                }
              },
              style: elevatedButtonStyle,
              child: const Text('Get-otp'),
            ),
          ],
        ),
      ),
    );
  }
}

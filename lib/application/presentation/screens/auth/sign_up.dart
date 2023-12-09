import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/widgets/auth_image_container.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

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
            child: Column(
              children: [
                SizedBox(height: sHeight * 0.10),
                Text('Hello!\nWelcome Back',
                    style: kronOne(fontSize: 0.05, color: kBlue),
                    textAlign: TextAlign.center),
                SizedBox(height: sHeight * 0.10),
                CustomTextFormField(
                  hintText: 'Email',
                  controller: context.read<AuthBloc>().emailController,
                  icon: Iconsax.edit_2,
                  textInputType: TextInputType.emailAddress,
                ),
                kHeight10,
                CustomTextFormField(
                  hintText: 'password',
                  controller: context.read<AuthBloc>().passwordController,
                  icon: Iconsax.lock,
                  sufixIcon1: Iconsax.eye_slash,
                  sufixIcon2: Iconsax.eye,
                ),
                kHeight20,
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      onPressed: () {
                        if (signupKey.currentState!.validate()) {
                          print('sigin up success');
                        }
                      },
                      style: elevatedButtonStyle,
                      child: const Text('Sign-Up')),
                ),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Alredy have an account',
                      style: abel(),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.signInPage);
                        },
                        child: const Text(
                          'Sing-In',
                          style: TextStyle(color: kBlueDark),
                        )),
                  ],
                ),
                const Divider(),
                kHeight50,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AuthImageContainer(
                        img: 'assets/images/google.png', ontap: () {}),
                    AuthImageContainer(
                        img: 'assets/images/mobile.png',
                        ontap: () {
                          Navigator.pushNamed(context, Routes.otpPage);
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/sign_in.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/widgets/google_and_phone.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/loader/loader.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/snack_show/snack_show.dart';
import 'package:assignment_wandoor_kayla/application/presentation/widgets/text_form_field.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/auth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.hasError ||
            (state.signInSuccess != null && state.signInSuccess!)) {
          showSnack(
            context: context,
            message: state.message!,
            color: state.hasError ? kRed : kGreen,
          );
        }
        if (state.signInSuccess != null && state.signInSuccess!) {
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.homePage, (route) => false);
        }
      },
      child: Column(
        children: [
          SizedBox(height: sHeight * 0.10),
          Text('Hello!\nWelcome Back',
              style: kronOne(fontSize: 0.05, color: kBlue),
              textAlign: TextAlign.center),
          SizedBox(height: sHeight * 0.10),
          CustomTextFormField(
            hintText: 'Email',
            controller: context.read<AuthBloc>().emailSignInController,
            icon: Iconsax.edit_2,
            textInputType: TextInputType.emailAddress,
          ),
          kHeight10,
          CustomTextFormField(
            hintText: 'password',
            controller: context.read<AuthBloc>().passwordSignInController,
            icon: Iconsax.lock,
            sufixIcon1: Iconsax.eye_slash,
            sufixIcon2: Iconsax.eye,
          ),
          kHeight20,
          Align(
              alignment: Alignment.centerRight,
              child: Text('Forgot password ?', style: abel(color: kBlueDark))),
          kHeight20,
          SizedBox(
            height: sHeight * 0.10,
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const LoadingAnimation(width: 0.20);
                }
                return Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      onPressed: () {
                        if (signInKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                          context.read<AuthBloc>().add(AuthEvent.signIn(
                              authModel: AuthModel(
                                  email: context
                                      .read<AuthBloc>()
                                      .emailSignInController
                                      .text
                                      .trim(),
                                  password: context
                                      .read<AuthBloc>()
                                      .passwordSignInController
                                      .text
                                      .trim())));
                        }
                      },
                      style: elevatedButtonStyle,
                      child: const Text('Sign-In')),
                );
              },
            ),
          ),          
         Text('Or sign-in with',style: abel(),),kHeight20,
          const GoogleAndPhone(),
          kHeight50,
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account',
                style: abel(),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.signUpPage);
                  },
                  child: const Text(
                    'Sing-Up',
                    style: TextStyle(color: kBlueDark),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

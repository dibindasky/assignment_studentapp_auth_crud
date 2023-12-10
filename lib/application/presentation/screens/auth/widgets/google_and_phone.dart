import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/auth/widgets/auth_image_container.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoogleAndPhone extends StatelessWidget {
  const GoogleAndPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthImageContainer(
            img: 'assets/images/google.png',
            ontap: () async {
              context.read<AuthBloc>().add(const AuthEvent.googleSignIn());
            }),kWidth50,
        AuthImageContainer(
            img: 'assets/images/mobile.png',
            ontap: () {
              print('to otp');
              Navigator.pushNamed(context, Routes.otpPage);
            })
      ],
    );
  }
}

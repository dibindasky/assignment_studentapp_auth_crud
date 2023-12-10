import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> customShowDialoge(
    {required BuildContext context, required VoidCallback onPress}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: kGreen, foregroundColor: kWhite),
          child: const Text('NO'),
        ),
        kWidth20,
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            onPress();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: kRed, foregroundColor: kWhite),
          child: const Text('YES'),
        )
      ],
      title: const Text('are you sure?'),
    ),
  );
}

Future<dynamic> logoutDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: kWhite,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Are you sure ?", style: abel(fontSize: 0.05)),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.close, color: kBlack, size: 16))
          ],
        ),
        content: Text("Please confirm if you want to logout",
            style: abel(fontSize: 0.05)),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: elevatedButtonStyle,
                child: const Text('confirm'),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signOut());
                },
              ),
            ],
          )
        ],
      );
    },
  );
}

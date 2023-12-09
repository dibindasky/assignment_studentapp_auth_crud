import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';

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

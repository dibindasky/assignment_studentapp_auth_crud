import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';

class AuthImageContainer extends StatelessWidget {
  const AuthImageContainer({super.key, required this.img, required this.ontap});
  final String img;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(splashFactory: NoSplash.splashFactory,
      onTap: () => ontap(),
      child: Container(
        height: sWidth * 0.10,
        width: sWidth * 0.10,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

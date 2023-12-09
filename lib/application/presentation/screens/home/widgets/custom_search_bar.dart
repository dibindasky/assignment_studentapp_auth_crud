import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField(
      {super.key,
      required this.hintText,
      this.icon,
      this.textAlign = TextAlign.start,
      required this.controller,
      this.color = kWhite,
      this.textCapitalization = TextCapitalization.none,
      this.textInputType = TextInputType.emailAddress,
      required this.function});
  final String hintText;
  final IconData? icon;
  final VoidCallback function;
  final TextAlign textAlign;
  final TextInputType textInputType;
  final TextEditingController controller;
  final Color color;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(kRadius5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5.0,
              offset: const Offset(3.0, 3.0),
              spreadRadius: -2.0,
            ),
          ],
        ),
        child: TextField(
          controller: controller,
          textCapitalization: textCapitalization,
          textAlign: textAlign,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(icon),
                onPressed: () => function(),
              ),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: abel(fontSize: 0.04)),
        ),
      ),
    );
  }
}

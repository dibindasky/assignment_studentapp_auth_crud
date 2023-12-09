import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double sHeight = 850;
double sWidth = 350;

const kEmpty = SizedBox();

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight50 = SizedBox(height: 50);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

const kRadius5 = Radius.circular(5);
const kRadius10 = Radius.circular(10);
const kRadius20 = Radius.circular(20);
const kRadius50 = Radius.circular(50);

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}

ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  side: const BorderSide(color: kWhite),
  fixedSize: Size(sWidth * 0.30, sWidth * 0.10),
  backgroundColor: kBlue,
  foregroundColor: kWhite,
  shadowColor: kBlueDark,
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(kRadius5)),
);

TextStyle kronOne(
    {double fontSize = 0.035,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kBlack}) {
  return GoogleFonts.kronaOne(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}

TextStyle abel(
    {double fontSize = 0.035,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kBlack}) {
  return GoogleFonts.abel(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}

BoxShadow boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  blurRadius: 5.0,
  offset: const Offset(3.0, 3.0),
  spreadRadius: -2.0,
);

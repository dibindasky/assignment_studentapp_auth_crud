import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: sWidth * width,
        child: const LoadingIndicator(
          indicatorType: Indicator.ballPulse,
          pathBackgroundColor: kBlue,
          colors: [kBlueDark],
        ),
      ),
    );
  }
}

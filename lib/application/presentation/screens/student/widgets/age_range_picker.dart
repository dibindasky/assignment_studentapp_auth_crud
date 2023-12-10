import 'package:assignment_wandoor_kayla/application/business_logic/student/student_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgeRAngePicker extends StatelessWidget {
  const AgeRAngePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              boxShadow: [boxShadow],
              color: kWhite,
              borderRadius: const BorderRadius.all(kRadius10)),
          height: sHeight * 0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Age Range: ${state.minAge} - ${state.maxAge}',
                style:
                    abel(fontSize: 0.04, fontWeight: FontWeight.w600),
              ),
              RangeSlider(
                  activeColor: kBlue,
                  min: 0,
                  max: 50,
                  values: RangeValues(
                      state.minAge.toDouble(), state.maxAge.toDouble()),
                  onChanged: (value) {
                    context.read<StudentBloc>().add(
                        StudentEvent.sortData(
                            start: value.start.toInt(),
                            end: value.end.toInt()));
                  }),
            ],
          ),
        );
      },
    );
  }
}


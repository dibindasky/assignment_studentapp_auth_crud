import 'package:assignment_wandoor_kayla/application/business_logic/student/student_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewLoadingIndecator extends StatelessWidget {
  const ListViewLoadingIndecator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        return state.isLoading
            ? const LinearProgressIndicator(
                color: kBlueLight,
              )
            : kEmpty;
      },
    );
  }
}

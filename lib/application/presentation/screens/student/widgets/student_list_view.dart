import 'package:assignment_wandoor_kayla/application/business_logic/student/student_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentListView extends StatelessWidget {
  const StudentListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<StudentBloc, StudentState>(
        builder: (context, state) {
          if (state.studentList == null || state.studentList!.isEmpty) {
            return const Center(child: Text('List is Empty'));
          } else {
           return ListView.builder(
              shrinkWrap: true,
              itemCount: state.studentList!.length,
              itemBuilder: (context, index) {
                final data=state.studentList![index];
                return Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    boxShadow: [boxShadow],
                    color: kWhite,
                    borderRadius: const BorderRadius.all(kRadius10)),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: kBlueLight,
                      backgroundImage: NetworkImage(data.image!),
                    ),
                    title: Text(
                      data.name,
                      style: abel(
                          fontSize: 0.05, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      data.age.toString(),
                      style: abel(),
                    ),
                  ),
                ),
              );
              },
            );
          }
        },
      ),
    );
  }
}

import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/business_logic/student/student_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/student/widgets/custom_search_bar.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/dialoge/show_dialoge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

ExpansionTileController expansionController = ExpansionTileController();

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StudentBloc>().add(const StudentEvent.getAllData());
    });
    return Scaffold(
      appBar: AppBar(
        foregroundColor: kWhite,
        title: Text(
          'Students',
          style: kronOne(fontSize: 0.05, color: kWhite),
        ),
        centerTitle: true,
        backgroundColor: kBlue,
        actions: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.logOutSuccess != null && state.logOutSuccess!) {
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.signInPage, (route) => false);
              }
            },
            child: IconButton(
                onPressed: () {
                  logoutDialog(context);
                },
                icon: const Icon(Iconsax.logout)),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size(sWidth, sHeight * 0.07),
          child: CustomSearchField(
            hintText: 'Search',
            icon: Iconsax.search_normal_1,
            function: () {},
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            BlocBuilder<StudentBloc, StudentState>(
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
            ),
            BlocBuilder<StudentBloc, StudentState>(
              builder: (context, state) {
                return state.isLoading
                    ? const LinearProgressIndicator(
                        color: kBlueLight,
                      )
                    : kEmpty;
              },
            ),
            Expanded(
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
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, Routes.addStudentPage);
        },
        backgroundColor: kBlue,
        label: Row(
          children: [
            const Icon(Iconsax.add, color: kWhite),
            Text(
              'Add Student',
              style: abel(fontSize: 0.05, color: kWhite),
            ),
          ],
        ),
      ),
    );
  }
}

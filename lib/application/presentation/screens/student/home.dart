import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/business_logic/student/student_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/student/widgets/age_range_picker.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/student/widgets/custom_search_bar.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/student/widgets/list_loader_indecator.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/student/widgets/student_list_view.dart';
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
      appBar: homePageAppbar(context),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            AgeRAngePicker(),
            ListViewLoadingIndecator(),
            StudentListView(),
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

  AppBar homePageAppbar(BuildContext context) {
    return AppBar(
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
    );
  }
}



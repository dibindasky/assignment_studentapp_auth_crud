import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/application/presentation/screens/home/widgets/custom_search_bar.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/dialoge/show_dialoge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Row(
            children: [
              Flexible(
                flex: 7,
                child: CustomSearchField(
                  controller: TextEditingController(),
                  hintText: 'Search',
                  icon: Iconsax.search_normal_1,
                  function: () {},
                ),
              ),
              const Flexible(child: kWidth50)
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                boxShadow: [boxShadow],
                color: kWhite,
                borderRadius: const BorderRadius.all(kRadius10)),
            child: Center(
              child: ListTile(
                onTap: () {},
                minVerticalPadding: 20,
                leading: const CircleAvatar(
                  backgroundColor: kBlueLight,
                ),
                title: Text(
                  'name',
                  style: abel(fontSize: 0.05, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  '22',
                  style: abel(),
                ),
              ),
            ),
          ),
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

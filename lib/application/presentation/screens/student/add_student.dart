import 'dart:io';

import 'package:assignment_wandoor_kayla/application/business_logic/student/student_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/loader/loader.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/snack_show/snack_show.dart';
import 'package:assignment_wandoor_kayla/application/presentation/widgets/text_form_field.dart';
import 'package:assignment_wandoor_kayla/domain/models/student/student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

final addStudentKey = GlobalKey<FormState>();

class ScreenAddStudent extends StatelessWidget {
  const ScreenAddStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(sWidth * 0.10),
          child: SingleChildScrollView(
            child: Form(
              key: addStudentKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: double.infinity,
                  ),
                  kHeight50,
                  Text(
                    'Enter Student\nDetails!',
                    textAlign: TextAlign.center,
                    style: kronOne(fontSize: 0.05, color: kBlue),
                  ),
                  kHeight30,
                  InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text(
                                'Choose image from',
                                style: abel(fontSize: 0.06),
                              ),
                              actions: [
                                TextButton.icon(
                                    label: Text('Camera',
                                        style: abel(fontSize: 0.05)),
                                    onPressed: () {
                                      context.read<StudentBloc>().add(
                                          const StudentEvent.pickImage(
                                              imageSource: ImageSource.camera));
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Iconsax.camera,
                                      color: kBlue,
                                    )),
                                TextButton.icon(
                                    label: Text('Gallery',
                                        style: abel(fontSize: 0.05)),
                                    onPressed: () {
                                      context.read<StudentBloc>().add(
                                          const StudentEvent.pickImage(
                                              imageSource:
                                                  ImageSource.gallery));
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Iconsax.gallery,
                                      color: kBlue,
                                    ))
                              ],
                            )),
                    child: BlocBuilder<StudentBloc, StudentState>(
                      builder: (context, state) {
                        return CircleAvatar(
                          radius: sWidth * 0.20,
                          backgroundColor: kBlueLight,
                          backgroundImage: state.image != null
                              ? FileImage(File(state.image!))
                              : null,
                          child: state.image == null
                              ? const Icon(Iconsax.image)
                              : null,
                        );
                      },
                    ),
                  ),
                  kHeight50,
                  CustomTextFormField(
                    hintText: 'Name',
                    controller: context.read<StudentBloc>().nameController,
                  ),
                  kHeight20,
                  CustomTextFormField(
                    hintText: 'Age',
                    controller: context.read<StudentBloc>().ageController,
                    textInputType: TextInputType.number,
                  ),
                  kHeight30,
                  BlocConsumer<StudentBloc, StudentState>(
                    listener: (context, state) {
                      if (state.isAdded) {
                        Navigator.pop(context);
                      }
                    },
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const LoadingAnimation(width: 0.20);
                      }
                      return ElevatedButton(
                        onPressed: () {
                          if (addStudentKey.currentState!.validate()) {
                            if (state.image == null) {
                              showSnack(
                                  context: context,
                                  message: 'add Image and continue');
                              return;
                            }
                            print(context
                                .read<StudentBloc>()
                                .ageController
                                .text
                                .toString()
                                .trim());

                            context
                                .read<StudentBloc>()
                                .add(StudentEvent.addStudent(
                                  student: Student(
                                    name: context
                                        .read<StudentBloc>()
                                        .nameController
                                        .text
                                        .trim(),
                                    age: int.parse(
                                      context
                                          .read<StudentBloc>()
                                          .ageController
                                          .text
                                          .toString()
                                          .trim(),
                                    ),
                                  ),
                                ));
                          }
                        },
                        style: elevatedButtonStyle,
                        child: const Text('Save'),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: kBlueLight,
        child: const Icon(Icons.people),
      ),
    );
  }
}

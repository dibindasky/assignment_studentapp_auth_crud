import 'dart:io';

import 'package:assignment_wandoor_kayla/application/business_logic/student/student_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerContainer extends StatelessWidget {
  const ImagepickerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
    );
  }
}

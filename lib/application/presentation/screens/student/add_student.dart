import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ScreenAddStudent extends StatelessWidget {
  const ScreenAddStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(sWidth * 0.10),
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
              CircleAvatar(
                radius: sWidth *0.20,
                backgroundColor: kBlueLight,
                child: const Icon(Iconsax.image),
              ),
              kHeight50,
              CustomTextFormField(
                  hintText: 'Name', controller: TextEditingController()),
              kHeight20,
              CustomTextFormField(
                  hintText: 'Age', controller: TextEditingController()),
              kHeight30,
              ElevatedButton(
                onPressed: () {},
                style: elevatedButtonStyle,
                child: const Text('Save'),
              )
            ],
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

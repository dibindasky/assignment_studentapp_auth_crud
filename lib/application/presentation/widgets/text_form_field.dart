import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/colors.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/constants/constant.dart';
import 'package:assignment_wandoor_kayla/application/presentation/utils/validators/validator.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.icon,
      this.sufixIcon1,
      this.sufixIcon2,
      this.textAlign = TextAlign.start,
      required this.controller,
      this.color = kWhite,
      this.textCapitalization = TextCapitalization.none,
      this.textInputType});
  final String hintText;
  final IconData? icon;
  final IconData? sufixIcon1;
  final IconData? sufixIcon2;
  final TextAlign textAlign;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final Color color;
  final TextCapitalization textCapitalization;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  IconData? sufixIcon;
  @override
  void initState() {
    sufixIcon = widget.sufixIcon1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: const BorderRadius.all(kRadius5),
          boxShadow: [boxShadow],
        ),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value!.isEmpty) {
              return 'This field cannot be empty';
            }else if(widget.hintText=='Age' && !isValidAge(value)){
              return 'enter a valid age';
            } else if(widget.hintText=='Name' && !isValidName(value)){
              return 'enter a valid name';
            }else if (widget.textInputType == TextInputType.emailAddress &&
                !isValidEmail(value)) {
              return 'Enter valid email';
            } else if (widget.textInputType == TextInputType.phone &&
                !isValidPhoneNumber(value)) {
              return 'Enter valid phone number';
            } else if (widget.hintText=='Password'&& value.length < 8) {
              return 'password must contains at least 8 letters';
            }
            return null;
          },
          controller: widget.controller,
          textCapitalization: widget.textCapitalization,
          textAlign: widget.textAlign,
          keyboardType: widget.textInputType,
          obscureText:
              sufixIcon == null ? false : sufixIcon == widget.sufixIcon1,
          decoration: InputDecoration(
            suffixIcon:
                widget.controller.text.isNotEmpty && widget.sufixIcon1 != null
                    ? InkWell(
                        splashFactory: NoSplash.splashFactory,
                        child: Icon(sufixIcon),
                        onTap: () {
                          setState(() {
                            sufixIcon = sufixIcon == widget.sufixIcon1
                                ? widget.sufixIcon2
                                : widget.sufixIcon1;
                          });
                        })
                    : null,
            prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
            border: InputBorder.none,
            hintText: widget.hintText,
          ),
        ),
      ),
    );
  }
}

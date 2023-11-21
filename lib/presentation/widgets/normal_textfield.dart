import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class GenerateNormalTextField extends StatelessWidget {
  const GenerateNormalTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onchanged,
    required this.keyboardType,
    this.minLine,
    this.horizontalContentPadding = 10,
    this.verticalContentPadding = 4,
    this.suffixIcon,
    this.defaultFillColor = MyColors.lightGrey1,
    this.changeFillColor = false,
  });
  final TextEditingController controller;
  final String hintText;
  final Function(String value) onchanged;
  final TextInputType keyboardType;
  final double horizontalContentPadding;
  final double verticalContentPadding;
  final int? minLine;
  final Widget? suffixIcon;
  final Color defaultFillColor;
  final bool changeFillColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onchanged,
      keyboardType: keyboardType,
      textAlign: TextAlign.right,
      maxLines: minLine,
      minLines: minLine,
      textInputAction: (minLine == null) ? null : TextInputAction.newline,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: horizontalContentPadding,
              vertical: verticalContentPadding),
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: MyColors.lightGrey,
            fontSize: 16,
          ),
          fillColor: changeFillColor
              ? ((controller.text.isNotEmpty)
                  ? MyColors.lightGrey
                  : defaultFillColor)
              : MyColors.lightGrey1,
          filled: true,
          border: OutlineInputBorder(
            borderSide: (defaultFillColor == Colors.white)
                ? const BorderSide(color: MyColors.lightGrey)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(4),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: (defaultFillColor == Colors.white)
                ? const BorderSide(color: MyColors.lightGrey1)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: (defaultFillColor == Colors.white)
                ? const BorderSide(color: MyColors.lightGrey)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(4),
          )),
    );
  }
}

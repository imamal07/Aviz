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
  });
  final TextEditingController controller;
  final String hintText;
  final Function(String value) onchanged;
  final TextInputType keyboardType;
  final double horizontalContentPadding;
  final int? minLine;

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
            horizontal: horizontalContentPadding, vertical: 10),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: MyColors.lightGrey,
          fontSize: 16,
        ),
        fillColor: (controller.text.isNotEmpty)
            ? MyColors.lightGrey
            : MyColors.lightGrey1,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}

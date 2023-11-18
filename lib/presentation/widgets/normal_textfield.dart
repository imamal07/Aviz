import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class GenerateNormalTextField extends StatelessWidget {
  const GenerateNormalTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onchanged,
    required this.keyboardType,
  });
  final TextEditingController controller;
  final String hintText;
  final Function(String value) onchanged;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onchanged,
      keyboardType: keyboardType,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
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

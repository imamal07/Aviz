import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class GenerateOneDigitTextField extends StatelessWidget {
  const GenerateOneDigitTextField(
      {super.key,
      required this.controller,
      required this.onChanged});
  final TextEditingController controller;
  final Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: onChanged,
      maxLength: 1,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4),
        ),
        fillColor: controller.text.isNotEmpty
                          ? MyColors.lightGrey
                          : MyColors.lightGrey1,
        filled: true,
      ),
    );
  }
}

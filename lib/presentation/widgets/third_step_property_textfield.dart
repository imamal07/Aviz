import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'normal_textfield.dart';

class GeneratePropertyTextField extends StatelessWidget {
  const GeneratePropertyTextField({super.key, required this.title, required this.hint, required this.controller, required this.onChanged,});

  final String title, hint;
  final TextEditingController controller;
  final Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        title.toText(color: MyColors.grey),
        16.0.toVerticalSpace(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: MyColors.lightGrey1,
            borderRadius: BorderRadius.circular(4),
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(MyImagesPath.upTriangleIcon),
                    Image.asset(MyImagesPath.downTriangleIcon),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    height: 25,
                    child: GenerateNormalTextField(
                      controller: controller,
                      hintText: hint,
                      onchanged: onChanged,
                      keyboardType: TextInputType.number,
                      horizontalContentPadding: 0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

class GenerateTitleWithIcon extends StatelessWidget {
  const GenerateTitleWithIcon({super.key,required this.title, required this.iconPath});
  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        title.toText(
          size: 16,
          fontWeight: FontWeight.w700,
        ),
        8.0.toHorizontalSpace(),
        Image.asset(iconPath),
      ],
    );
  }
}

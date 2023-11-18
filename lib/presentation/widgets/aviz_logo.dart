import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:flutter/material.dart';

class AvizLogoGenerated extends StatelessWidget {
  const AvizLogoGenerated({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: MyColors.lightGrey1,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Image.asset(MyImagesPath.avizLogoText),
          7.0.toHorizontalSpace(),
          Image.asset(MyImagesPath.avizLogoIcon),
        ],
      ),
    );
  }
}

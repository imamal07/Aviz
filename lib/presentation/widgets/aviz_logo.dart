import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:flutter/material.dart';

class AvizLogoGenerated extends StatelessWidget {
  const AvizLogoGenerated({super.key, this.backgroundColor = MyColors.lightGrey1});
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(MyImagesPath.avizLogoText),
          7.0.toHorizontalSpace(),
          Image.asset(MyImagesPath.avizLogoIcon),
        ],
      ),
    );
  }
}

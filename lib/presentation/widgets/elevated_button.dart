import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class GenerateElevatedButton extends StatelessWidget {
  final Color backgrounColor;
  final Widget child;
  const GenerateElevatedButton({super.key, this.backgrounColor = MyColors.red, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: MyColors.red,
              ),
              borderRadius: BorderRadius.circular(4)),
          backgroundColor: backgrounColor,
          elevation: 0),
      child: child,
    );
  }
}

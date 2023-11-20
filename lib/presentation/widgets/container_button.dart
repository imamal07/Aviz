import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class GenerateContainerButton extends StatelessWidget {
  const GenerateContainerButton({super.key, required this.onTap, required this.child,});
  final Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap
      ,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.lightGrey1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: child,
      ),
    );
  }
}

import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class GenerateSwitch extends StatelessWidget {
  const GenerateSwitch({super.key, required this.value, required this.title,required this.onTap});
  final bool value;
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.lightGrey1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.decelerate,
              width: 22,
              height: 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: value ? MyColors.red : MyColors.lightGrey,
              ),
              child: AnimatedAlign(
                alignment: value ? Alignment.centerRight : Alignment.centerLeft,
                duration: const Duration(milliseconds: 300),
                curve: Curves.decelerate,
                child: Container(
                  width: 9,
                  height: 9,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ).toAllPadding(value: 4),
              ),
            ),
            title.toText(size: 16),
          ],
        ),
      ),
    );
  }
}

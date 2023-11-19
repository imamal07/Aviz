import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class GenerateAddAdScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const GenerateAddAdScreenAppBar({super.key, required this.title});
  final Text title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Image.asset(MyImagesPath.rightArrow),
      ],
      leading: Image.asset(MyImagesPath.closeIcon),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(MyImagesPath.avizLogoText),
          title,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

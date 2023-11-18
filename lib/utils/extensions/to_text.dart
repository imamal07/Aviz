import 'package:aviz/utils/constants.dart';
import 'package:flutter/material.dart';

extension ToText on String {
  Text toText(
          {double size = 14,
          Color color = MyColors.darkGrey,
          FontWeight fontWeight = FontWeight.w400,
          TextAlign textAlign = TextAlign.right}) =>
      Text(
        this,
        textDirection: TextDirection.rtl,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
        ),
      );
}

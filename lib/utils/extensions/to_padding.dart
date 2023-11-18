import 'package:flutter/material.dart';

extension ToPadding on Widget {
  Padding toAllPadding({required double value}) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );
  Padding toSymmetricPadding({double vertical = 0, double horizontal = 0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );
}

extension ToSpace on double {
  Widget toHorizontalSpace() => SizedBox(width: this);
  Widget toVerticalSpace() => SizedBox(height: this);
}

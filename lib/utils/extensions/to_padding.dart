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

  Padding toOnlyPadding(
          {double left = 0,
          double right = 0,
          double top = 0,
          double bottom = 0}) =>
      Padding(
          padding: EdgeInsets.only(
              left: left, right: right, bottom: bottom, top: top),
          child: this);
}

extension ToSpace on double {
  Widget toHorizontalSpace() => SizedBox(width: this);
  Widget toVerticalSpace() => SizedBox(height: this);
}

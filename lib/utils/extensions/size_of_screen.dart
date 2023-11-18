import 'package:flutter/material.dart';

extension SizeOfScreen on BuildContext {
  double screenWidth() => MediaQuery.sizeOf(this).width;
  double screenHeight() => MediaQuery.sizeOf(this).height;
}

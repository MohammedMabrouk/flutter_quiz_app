import 'package:flutter/widgets.dart';

class AppColor{
  AppColor._();

  // colors
  static const Color blue1 = Color(0xFF011F4B);
  static const Color blue2 = Color(0xFF03396C);
  static const Color blue3 = Color(0xFF005B96);
  static const Color blue4 = Color(0xFF6497B1);
  static const Color blue5 = Color(0x806497B1);
  static const Color blue6 = Color(0xFFB3CDE0);

  static const Color white_50 = Color(0xb3ffffff);

  // gradients
  // example
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );
}

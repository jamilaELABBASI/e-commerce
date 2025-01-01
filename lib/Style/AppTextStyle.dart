import 'package:flutter/material.dart';

class AppTextStyle extends TextStyle {
  static TextStyle text1 = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle text2 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle text3 = TextStyle(
    fontSize: 16.0,
    color: Colors.black,
  );

  // Custom style with more flexibility
  static TextStyle flexibleStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 20.0,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? Colors.green,
    );
  }
}

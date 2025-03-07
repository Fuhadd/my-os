import 'package:flutter/material.dart';

class CustomTextStyles {
  static TextStyle bold(
          {double? fontSize = 13, Color? color, double? height}) =>
      TextStyle(
        fontFamily: "BrandGrotesque",
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        color: color,
        height: height,
      );

  static TextStyle semiBold(
          {double? fontSize = 13, Color? color, double? height}) =>
      TextStyle(
        fontFamily: "BrandGrotesque",
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: color,
        height: height,
      );

  static TextStyle regular(
          {double? fontSize = 13, Color? color, double? height}) =>
      TextStyle(
        fontFamily: "BrandGrotesque",
        fontSize: fontSize,
        color: color,
        height: height,
      );

  static TextStyle w500(
          {double? fontSize = 13, Color? color, double? height}) =>
      TextStyle(
        fontFamily: "BrandGrotesque",
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        color: color,
        height: height,
      );

  ////
  ///
  ///
  static TextStyle nexaBold(
          {double? fontSize = 13, Color? color, double? height}) =>
      TextStyle(
        fontFamily: "Nexa",
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        color: color,
        height: height,
      );

  static TextStyle nexaSemiBold(
          {double? fontSize = 13, Color? color, double? height}) =>
      TextStyle(
        fontFamily: "Nexa",
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: color,
        height: height,
      );

  static TextStyle nexaRegular(
          {double? fontSize = 13, Color? color, double? height}) =>
      TextStyle(
        fontFamily: "Nexa",
        fontSize: fontSize,
        color: color,
        height: height,
      );

  static TextStyle nexaW500(
          {double? fontSize = 13, Color? color, double? height}) =>
      TextStyle(
        fontFamily: "Nexa",
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        color: color,
        height: height,
      );
}

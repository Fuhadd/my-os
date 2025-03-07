import 'package:flutter/material.dart';
import 'package:my_os/constants/custom_colors.dart';
import 'package:my_os/utils/custom_text_styles.dart';

Widget boldText(
  String title, {
  Key? key,
  double? fontSize = 13,
  Color? color = CustomColors.blackTextColor,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) =>
    Text(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: CustomTextStyles.bold(
        fontSize: fontSize,
        color: color,
      ),
    );

Widget semiBoldText(
  String title, {
  Key? key,
  double? fontSize = 13,
  Color? color = CustomColors.blackTextColor,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) =>
    Text(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: CustomTextStyles.semiBold(
        fontSize: fontSize,
        color: color,
      ),
    );

Widget regularText(
  String title, {
  Key? key,
  double? fontSize = 13,
  Color? color = CustomColors.blackTextColor,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) =>
    Text(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: CustomTextStyles.regular(
        fontSize: fontSize,
        color: color,
      ),
    );

Widget w500Text(
  String title, {
  Key? key,
  double? fontSize = 13,
  Color? color,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) =>
    Text(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: CustomTextStyles.w500(
        fontSize: fontSize,
        color: color,
      ),
    );

Widget nexaBoldText(
  String title, {
  Key? key,
  double? fontSize = 13,
  Color? color = CustomColors.blackTextColor,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) =>
    Text(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: CustomTextStyles.nexaBold(
        fontSize: fontSize,
        color: color,
      ),
    );

Widget nexaSemiBoldText(
  String title, {
  Key? key,
  double? fontSize = 13,
  Color? color = CustomColors.blackTextColor,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) =>
    Text(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: CustomTextStyles.nexaSemiBold(
        fontSize: fontSize,
        color: color,
      ),
    );

Widget nexaRegularText(
  String title, {
  Key? key,
  double? fontSize = 13,
  Color? color = CustomColors.blackTextColor,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) =>
    Text(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: CustomTextStyles.nexaRegular(
        fontSize: fontSize,
        color: color,
      ),
    );

Widget nexaW500Text(
  String title, {
  Key? key,
  double? fontSize = 13,
  Color? color,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) =>
    Text(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: CustomTextStyles.nexaW500(
        fontSize: fontSize,
        color: color,
      ),
    );

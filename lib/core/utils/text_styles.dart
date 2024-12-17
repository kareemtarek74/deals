import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResoponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: 'Cairo',
      height: 20 / 16,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResoponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      fontFamily: 'Cairo',
      height: 20 / 16,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResoponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Cairo',
      height: 17.5 / 14,
    );
  }

  static TextStyle styleBold14(BuildContext context) {
    return TextStyle(
      fontSize: getResoponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w700,
      fontFamily: 'Cairo',
      height: 17.5 / 14,
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResoponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w700,
      fontFamily: 'Cairo',
      height: 0.05,
    );
  }
}

double getResoponsiveFontSize(BuildContext context,
    {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFotSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .6;
  double upperLimit = fontSize * 1.2;

  return responsiveFotSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  return width / 370;
}

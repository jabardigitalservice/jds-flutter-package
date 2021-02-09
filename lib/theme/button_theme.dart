import 'package:flutter/material.dart';
import 'package:jds_design/theme/colors.dart';

class JDSButtonTheme {
  static const ButtonThemeData primary = ButtonThemeData(
    buttonColor: JDSColors.green,
    textTheme: ButtonTextTheme.normal,
  );

  static const ButtonThemeData secondary = ButtonThemeData(
    buttonColor: JDSColors.white,
    textTheme: ButtonTextTheme.primary,
  );

  static const ButtonThemeData danger = ButtonThemeData(
    buttonColor: JDSColors.red,
    textTheme: ButtonTextTheme.primary,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/style/base.dart';

class CustomTheme {
  const CustomTheme(
      this.themeData,
      this.defaultBackgroundColor,
      this.defaultForegroundColor,
      this.normalElevatedButtonStyle,
      this.lightElevatedButtonStyle,
      this.grayElevatedButtonStyle,
      );

  final ThemeData themeData;
  final Color defaultBackgroundColor;
  final Color defaultForegroundColor;

  final ButtonStyle normalElevatedButtonStyle;
  final ButtonStyle lightElevatedButtonStyle;
  final ButtonStyle grayElevatedButtonStyle;

  T valueByBrightness<T>(T lightValue, T darkValue) {
    return ThemeBase.selectValue(themeData.brightness, lightValue, darkValue);
  }

  TextStyle get header1 => themeData.textTheme.displayLarge!;

  TextStyle get header2 => themeData.textTheme.displayMedium!;

  TextStyle get header3 => themeData.textTheme.displaySmall!;

  TextStyle get subtitle1 => themeData.textTheme.headlineLarge!;

  TextStyle get subtitle2 => themeData.textTheme.headlineMedium!;

  TextStyle get subtitle3 => themeData.textTheme.headlineSmall!;

  TextStyle get subtitle4 => themeData.textTheme.bodyLarge!;

  TextStyle get body1 => themeData.textTheme.bodyMedium!;

  TextStyle get body2 => themeData.textTheme.bodySmall!;

  TextStyle get caption1 => themeData.textTheme.labelLarge!;

  TextStyle get caption2 => themeData.textTheme.labelMedium!;

  TextStyle get caption3 => themeData.textTheme.labelSmall!;
}

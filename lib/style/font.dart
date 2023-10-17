import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/style/color_style.dart';

class Font {
  static const String fontFamily = 'SpoqaHanSansNeo';

  static TextStyle style({FontWeight? fontWeight, required double height}) {
    return TextStyle(
      color: ColorStyle.gray80,
      letterSpacing: -0.5,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.normal,
      height: height,
    );
  }

  static const font10 = TextStyle(fontSize: 10);
  static const font12 = TextStyle(fontSize: 12);
  static const font14 = TextStyle(fontSize: 14);
  static const font16 = TextStyle(fontSize: 16);
  static const font18 = TextStyle(fontSize: 18);
  static const font20 = TextStyle(fontSize: 20);
  static const font24 = TextStyle(fontSize: 24);
  static const font28 = TextStyle(fontSize: 28);

  static RegularFont get regular => RegularFont();

  static BoldFont get bold => BoldFont();
}

class RegularFont {
  static TextStyle get font10 => Font.font10.merge(Font.style(height: 1.5));

  static TextStyle get font12 => Font.font12.merge(Font.style(height: 1.5));

  static TextStyle get font14 => Font.font14.merge(Font.style(height: 1.5));

  static TextStyle get font16 => Font.font16.merge(Font.style(height: 1.5));

  static TextStyle get font18 => Font.font18.merge(Font.style(height: 1.5));

  static TextStyle get font20 => Font.font20.merge(Font.style(height: 1.5));

  static TextStyle get font24 => Font.font24.merge(Font.style(height: 1.5));

  static TextStyle get font28 => Font.font28.merge(Font.style(height: 1.5));
}

class BoldFont {
  static TextStyle get font10 => Font.font10.merge(Font.style(fontWeight: FontWeight.bold, height: 1.5));

  static TextStyle get font12 => Font.font12.merge(Font.style(fontWeight: FontWeight.bold, height: 1.5));

  static TextStyle get font14 => Font.font14.merge(Font.style(fontWeight: FontWeight.bold, height: 1.5));

  static TextStyle get font16 => Font.font16.merge(Font.style(fontWeight: FontWeight.bold, height: 1.5));

  static TextStyle get font18 => Font.font18.merge(Font.style(fontWeight: FontWeight.bold, height: 1.5));

  static TextStyle get font20 => Font.font20.merge(Font.style(fontWeight: FontWeight.bold, height: 1.5));

  static TextStyle get font24 => Font.font24.merge(Font.style(fontWeight: FontWeight.bold, height: 1.5));

  static TextStyle get font28 => Font.font28.merge(Font.style(fontWeight: FontWeight.bold, height: 1.5));
}

import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/style/color_style.dart';
import 'package:flutter_basic_ui/style/font.dart';

class ThemeBase {
  static T selectValue<T>(Brightness brightness, T lightValue, T darkValue) {
    return brightness == Brightness.light ? lightValue : darkValue;
  }

  static getDefaultBackgroundColor(Brightness brightness) {
    return selectValue(brightness, ColorStyle.gray10, ColorStyle.gray100);
  }

  static getDefaultForegroundColor(Brightness brightness) {
    return selectValue(brightness, ColorStyle.gray80, ColorStyle.gray20);
  }

  static ThemeData init(ThemeData themeData) {
    final brightness = themeData.brightness;

    final defaultBackgroundColor = getDefaultBackgroundColor(brightness);
    final defaultForegroundColor = getDefaultForegroundColor(brightness);

    const textTheme = TextTheme(
      displayLarge: Font.font20,
      displayMedium: Font.font16,
      displaySmall: Font.font12,
      headlineLarge: Font.font20,
      headlineMedium: Font.font16,
      headlineSmall: Font.font12,
      bodyLarge: Font.font20,
      bodyMedium: Font.font16,
      bodySmall: Font.font12,
      labelLarge: Font.font20,
      labelMedium: Font.font16,
      labelSmall: Font.font12,
    );

    final theme = themeData.copyWith(
      primaryColor: ColorStyle.gray80,
      indicatorColor: ColorStyle.gray80,
      colorScheme: themeData.colorScheme.copyWith(
        primary: ColorStyle.gray80,
      ),
      textTheme: textTheme,
      scaffoldBackgroundColor: defaultBackgroundColor,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        backgroundColor: defaultBackgroundColor,
        foregroundColor: defaultForegroundColor,
        elevation: 0,
        titleTextStyle: textTheme.headlineLarge,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(ColorStyle.gray80),
          foregroundColor: MaterialStateProperty.all<Color>(ColorStyle.gray20),
          elevation: MaterialStateProperty.all<double>(0),
          textStyle: MaterialStateProperty.all<TextStyle>(textTheme.bodyLarge!),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: defaultBackgroundColor,
        unselectedItemColor: defaultForegroundColor,
        unselectedLabelStyle: textTheme.labelSmall,
        selectedItemColor: defaultForegroundColor,
        selectedLabelStyle: textTheme.labelSmall,
        elevation: 0,
      ),
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: defaultForegroundColor,
        labelStyle: textTheme.headlineSmall,
        unselectedLabelColor:
        selectValue(brightness, ColorStyle.gray40, ColorStyle.gray60),
        unselectedLabelStyle: textTheme.headlineSmall,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: ColorStyle.gray80,
      ),
    );

    theme.textTheme.apply(
      fontFamily: Font.fontFamily,
    );

    return theme;
  }
}

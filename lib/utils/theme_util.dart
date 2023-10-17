import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/style/base.dart';
import 'package:flutter_basic_ui/style/color_style.dart';
import 'package:flutter_basic_ui/style/custom.dart';
import 'package:flutter_basic_ui/style/font.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeUtil {
  const ThemeUtil(this._storage);

  final GetStorage _storage;

  static const _container = 'theme-mode';

  static Future<ThemeUtil> init() async {
    await GetStorage.init(_container);
    final storage = GetStorage(_container);

    return ThemeUtil(storage);
  }

  Future<void> _save(ThemeMode mode) async {
    await _storage.write('mode', mode.index);
  }

  Future<void> change() async {
    final newMode = Get.isDarkMode ? ThemeMode.light : ThemeMode.dark;

    Get.changeThemeMode(newMode);

    await _save(newMode);
  }

  /// 마지막으로 저장된 모드 또는 시스템 모드 가져오기
  ThemeMode current() {
    // final modeIndex = _storage.read<int>(_key) ?? 0;
    // final currentThemeMode = ThemeMode.values[modeIndex];
    //
    // return currentThemeMode;
    return ThemeMode.light;
  }

  static ThemeData light() {
    return ThemeBase.init(
      ThemeData(
          brightness: Brightness.light,
          fontFamily: Font.fontFamily,
          dialogTheme: const DialogTheme(
            elevation: 0,
          )),
    );
  }

  static ThemeData dark() {
    return ThemeBase.init(ThemeData.dark());
  }

  static CustomTheme of(BuildContext context) {
    final theme = Theme.of(context);

    final customTheme = Get.put(
      CustomTheme(
        theme,
        ThemeBase.getDefaultBackgroundColor(theme.brightness),
        ThemeBase.getDefaultForegroundColor(theme.brightness),
        ElevatedButton.styleFrom(
          backgroundColor: ColorStyle.gray80,
          foregroundColor: ColorStyle.gray10,
        ),
        ElevatedButton.styleFrom(
          backgroundColor: ColorStyle.gray80,
          foregroundColor: ColorStyle.gray80,
        ),
        ElevatedButton.styleFrom(
          backgroundColor: ColorStyle.gray20,
          foregroundColor: ColorStyle.gray80,
        ),
      ),
    );

    return customTheme;
  }
}

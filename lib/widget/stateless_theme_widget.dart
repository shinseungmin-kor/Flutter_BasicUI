import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/components/loading/loader.dart';
import 'package:flutter_basic_ui/style/custom.dart';
import 'package:flutter_basic_ui/utils/theme_util.dart';
import 'package:loader_overlay/loader_overlay.dart';

/* StatelessThemeWidget 은 StatelessWidget 을 상속하는 추상클래스이다.
*  굳이 한 단계 더 StatelessThemeWidget 를 만들어서 사용하는 이유는
*  앱에 적용되는 테마를 각 클래스마다 일일이 적용해야되는 번거로움을 피하기 위함이다.
*  그 테마는 buildWithTheme 이 가지고 있고, StatelessWidget 대신 StatelessThemeWidget 를 사용하는
*  클래스에서는 build 대신 buildWithTheme 를 오버라이딩 함으로써 기본적으로 테마를 적용할 수 있게 된다. */

abstract class StatelessThemeWidget extends StatelessWidget {
  const StatelessThemeWidget({super.key});

  /* buildWithTheme 는 하위클래스에서 오버라이딩 하여 사용이 가능하다.
  *  이제 하위 클래스에서 buildWithTheme 를 호출하면 아래의 오버라이딩 된 메서드의
  *  조건에 따라 buildWithTheme 가 실행될것이다. */

  @protected
  void info(String text) {
    log(text);
  }

  @protected
  Widget buildWithTheme(
      BuildContext context,
      CustomTheme theme,
      Loader loader,
      );

  @override
  Widget build(BuildContext context) {
    final theme = ThemeUtil.of(context);

    final loaderOverlay = context.loaderOverlay;
    final loader = Loader(
      showLoading: () => loaderOverlay.show(),
      hideLoading: () => loaderOverlay.hide(),
    );

    return buildWithTheme(context, theme, loader);
  }
}

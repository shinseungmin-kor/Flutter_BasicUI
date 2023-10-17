import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/components/loading/loader.dart';
import 'package:flutter_basic_ui/style/custom.dart';
import 'package:flutter_basic_ui/widget/stateless_theme_widget.dart';

class HomePage extends StatelessThemeWidget {
  const HomePage({super.key});

  @override
  Widget buildWithTheme(
      BuildContext context,
      CustomTheme theme,
      Loader loader,
      ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
    );
  }
}
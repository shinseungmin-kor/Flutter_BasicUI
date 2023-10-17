import 'package:flutter/material.dart';

class Loader {
  Loader({
    required VoidCallback showLoading,
    required VoidCallback hideLoading,
  })  : _hideLoading = hideLoading,
        _showLoading = showLoading;

  final VoidCallback _showLoading;
  final VoidCallback _hideLoading;

  void show() {
    _showLoading();
  }

  void hide() {
    _hideLoading();
  }
}

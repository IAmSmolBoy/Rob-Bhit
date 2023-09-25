import 'package:flutter/material.dart';


class LightModeNotifier extends ValueNotifier<bool> {

  LightModeNotifier(super.value) {

    theme = super.value ?
      ThemeMode.light :
      ThemeMode.dark;

  }

  late ThemeMode theme;

  ThemeMode get themeMode => theme;

  void set(bool value) {
    super.value = value;
    theme = value ?
      ThemeMode.light :
      ThemeMode.dark;
  }

}
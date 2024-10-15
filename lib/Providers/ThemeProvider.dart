import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // data or state
  ThemeMode currentTheme = ThemeMode.dark;

  changeAppTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isLightTheme() {
    return currentTheme == ThemeMode.light;
  }
}

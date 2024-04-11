
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier
{
  var _themeMode = ThemeMode.light;

  ThemeMode get getThemeMode => _themeMode;

  void setThemeMode(themeMode)
  {
    _themeMode = themeMode;
    notifyListeners();
  }
}
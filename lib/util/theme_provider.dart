import 'package:flutter/material.dart';

import '../util/theme_utils.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeDataStyle = appTheme;

  ThemeData get themeDataStyle => _themeDataStyle;

  set themeDataStyle(ThemeData themeData) {
    _themeDataStyle = themeData;
    notifyListeners();
  }

  void changeTheme() {
    if (_themeDataStyle == appTheme) {
      themeDataStyle = lightTheme;
    } else {
      themeDataStyle = appTheme;
    }
  }
}

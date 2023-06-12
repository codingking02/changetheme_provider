import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData? _mytheme;
  ThemeData? get mytheme => _mytheme;

  void settheme(ThemeData lighttheme, ThemeData darktheme) {
    _mytheme == lighttheme ? _mytheme = darktheme : _mytheme = lighttheme;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData? _mytheme;
  ThemeData? get mytheme => _mytheme;

  void settheme(ThemeData myth) {
    _mytheme = myth;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../custom/utils/style.dart';

class ThemeNotifier with ChangeNotifier {
  final String key = "theme";
  SharedPreferences? _prefs;
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeNotifier() {
    _loadFromPrefs();
  }

  Future<void> _loadFromPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _isDarkMode = _prefs!.getBool(key) ?? false;
    notifyListeners();
  }

  Future<void> toggleTheme(value) async {
    _prefs!.setBool(key, value);
    notifyListeners();
  }

  ThemeData getTheme() {
    if (_isDarkMode) {
      return darkTheme;
    } else {
      return lightTheme;
    }
  }
}

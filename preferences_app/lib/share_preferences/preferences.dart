import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(String name) {
    _name = name;
    _prefs.setString('name', _name);
  }

  static bool get isDarkmode {
    return _prefs.getBool('isDarkmode') ?? _isDarkMode;
  }

  static set isDarkmode(bool isDark) {
    _isDarkMode = isDark;
    _prefs.setBool('isDarkmode', _isDarkMode);
  }

  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int gender) {
    _gender = gender;
    _prefs.setInt('gender', _gender);
  }
}


import 'package:flutter/material.dart';

class AppTheme {

  static const Color prymary = Colors.red;

  static final ThemeData lightTheme =  ThemeData.light().copyWith(
    // Color primario
    primaryColor: Colors.red,

    // appBar theme
    appBarTheme: const AppBarTheme(
      color: prymary,
      elevation: 0,
    ),

    // Text Botton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: prymary)
    ),
  );
  static final ThemeData darkTheme =  ThemeData.dark().copyWith(
    // Color primario
    primaryColor: Colors.indigo,

    // appBar theme
    appBarTheme: const AppBarTheme(
      color: prymary,
      elevation: 0,
    ),
  );
}
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 1),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.purple,
      appBarTheme: const AppBarTheme(color: primary, elevation: 1));
}

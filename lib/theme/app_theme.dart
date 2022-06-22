import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: Colors.green,

      //appbar theme

      appBarTheme: const AppBarTheme(
        color: Colors.green,
        //color: Color(0xFF84AB5C),
        elevation: 0,
      ));
}

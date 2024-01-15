import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      titleLarge: TextStyle(color: Colors.black, fontSize: 26),
      labelLarge: TextStyle(color: Colors.black54, fontSize: 14),
      headlineMedium: TextStyle(color: Colors.black, fontSize: 21),
      headlineSmall: TextStyle(color: Colors.black, fontSize: 16),
    ),
    colorScheme: ColorScheme.light(
        background: Colors.grey[300]!,
        primary: Colors.grey[200]!,
        secondary: Colors.grey[100]!));

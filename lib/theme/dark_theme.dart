import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      titleLarge: TextStyle(color: Colors.white, fontSize: 26),
      labelLarge: TextStyle(color: Colors.white70, fontSize: 14),
      headlineMedium: TextStyle(color: Colors.white, fontSize: 21),
      headlineSmall: TextStyle(color: Colors.white, fontSize: 16),
    ),
    colorScheme: ColorScheme.dark(
      background: Colors.grey[900]!,
      primary: Colors.grey[800]!,
      secondary: Colors.grey[700]!,
    ));

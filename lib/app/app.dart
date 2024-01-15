import 'package:flutter/material.dart';
import 'package:yoga_ui/theme/dark_theme.dart';
import 'package:yoga_ui/theme/light_theme.dart';

import '../color/color.dart';
import '../screen/main/main_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      // theme: darkTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      // theme: ThemeData(
      //     brightness: Brightness.light,
      //     fontFamily: 'Playfair',
      //     backgroundColor: AppColor.mainScreenColor),
      home: HomePage(),
    );
  }
}

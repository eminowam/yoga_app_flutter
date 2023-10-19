import 'package:flutter/material.dart';

import '../color/color.dart';
import '../screen/main/main_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Playfair',
          backgroundColor: AppColor.mainScreenColor),
      home: HomePage(),
    );
  }
}

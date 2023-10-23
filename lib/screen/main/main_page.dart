import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga_ui/screen/details/detail_page.dart';
import 'package:yoga_ui/screen/main/pages/page_one.dart';
import 'package:yoga_ui/screen/settings/settings.dart';

import '../../color/color.dart';
import '../../widget/main/card.dart';
import '../../widget/main/category/categories.dart';
import '../../widget/main/text_search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.mainScreenColor,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColor.mainScreenColor,
          elevation: 3,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                // backgroundColor: Colors.black,
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                // backgroundColor: Colors.black,
                label: 'Settings'),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: Builder(
          builder: (context) {
            if (_currentIndex == 0) {
              return PageOne();
            } else if (_currentIndex == 1) {
              return SettingsScreen();
            }

            return SizedBox();
          },
        ));
  }
}

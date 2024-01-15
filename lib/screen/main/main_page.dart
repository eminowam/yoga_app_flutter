import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga_ui/screen/main/pages/page_one.dart';
import 'package:yoga_ui/screen/settings/settings.dart';

import '../../color/color.dart';

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
        backgroundColor: Theme.of(context).colorScheme.background,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 4,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          items:const [
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

            return const SizedBox();
          },
        ));
  }
}

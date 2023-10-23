import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga_ui/screen/details/detail_page.dart';

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
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainScreenColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.mainScreenColor,
        elevation: 3,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // backgroundColor: Colors.black,
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              // backgroundColor: Colors.black,
              label: 'Settings'
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSearch(),
              SizedBox(
                height: 32,
              ),
              CategoriesState(),
              SizedBox(
                height: 20,
              ),
              const Text(
                "Recommended Courses",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 16,
              ),
              YogaCards(
                title: "Yoga Pilates",
                subTitle: "5 lessons",
                  image: 'assets/yoga.png',
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => DetailsScreen()));
                },
              ),
              SizedBox(height: 5,),
              YogaCards(
                title: "Full Body Stretch",
                subTitle: "5 lessons",
                image: 'assets/yoga2.png',
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => DetailsScreen()));
                },
              ),
              SizedBox(height: 5,),
              YogaCards(
                title: "Gentle Flow",
                subTitle: "5 lessons",
                image: 'assets/yoga3.png',
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => DetailsScreen()));
                },
              ),
              SizedBox(height: 5,),
              YogaCards(
                title: "Gentle Flow",
                subTitle: "5 lessons",
                image: 'assets/yoga.png',
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => DetailsScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

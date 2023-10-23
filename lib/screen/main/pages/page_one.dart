import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga_ui/screen/details/detail_page.dart';
import 'package:yoga_ui/widget/main/card.dart';
import 'package:yoga_ui/widget/main/category/categories.dart';
import 'package:yoga_ui/widget/main/text_search.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
    );
  }
}

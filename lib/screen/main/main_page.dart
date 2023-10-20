import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga_ui/screen/details/detail_page.dart';

import '../../color/color.dart';
import '../../widget/main/card.dart';
import '../../widget/main/categories.dart';
import '../../widget/main/text_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainScreenColor,
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(right: 25,left: 25,top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSearch(),
              SizedBox(height: 32,),
              CategoriesState(),
              SizedBox(height: 20,),
              const Text(
                "Recommended Courses",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const  SizedBox(
                height: 16,
              ),
              YogaCards(title: "Yoga Pilates", subTitle: "5 lessons",onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (_)=> DetailsScreen()));
              },),
              YogaCards(title: "Full Body Stretch", subTitle: "5 lessons",onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (_)=> DetailsScreen()));
              },),
              YogaCards(title: "Gentle Flow", subTitle: "5 lessons",onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (_)=> DetailsScreen()));
              },),
              YogaCards(title: "Body Catch", subTitle: "5 lessons",onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (_)=> DetailsScreen()));
              },)
            ],
          ),
        ),
      ),
    );
  }
}

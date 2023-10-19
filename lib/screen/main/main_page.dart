import 'package:flutter/material.dart';

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
              CategoriesRow(),
              SizedBox(height: 20,),
              YogaCards()
            ],
          ),
        ),
      ),
    );
  }
}

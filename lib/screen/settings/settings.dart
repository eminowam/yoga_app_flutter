import 'package:flutter/material.dart';
import 'package:yoga_ui/color/color.dart';

import '../../widget/settings/category_settings.dart';
import '../../widget/settings/settings_column.dart';
import '../../widget/settings/settings_row.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainScreenColor,
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsRow(),
              SettingsTextColumn(),
              SizedBox(height: 15,),
              Text("Latest Practices",
              style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.w500),),
              SizedBox(height: 14,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryCard(
                        title: 'Mind',
                        subTitle: 'Let’s train it',
                          image: "assets/pose.png"
                      ),
                      CategoryCard(
                          title: "Relax",
                          subTitle: "Refraim stress",
                      image: "assets/pose2.png",),
                      CategoryCard(
                          title: "Focus",
                          subTitle: "Focus on work",
                          image: "assets/pose.png"),
                      CategoryCard(
                          title: "Love",
                          subTitle: "Love yourself",
                          image: "assets/pose2.png"),
                    ],
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

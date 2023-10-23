import 'package:flutter/material.dart';
import 'package:yoga_ui/color/color.dart';

import '../../widget/settings/categories/category_settings.dart';
import '../../widget/settings/settings_column.dart';
import '../../widget/settings/settings_row.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainScreenColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 70),
          child: Column(
            children: [
              SettingsRow(),
              SettingsTextColumn(),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryCard(
                        title: 'Mind',
                        subTitle: 'Let’s train it',
                      ),
                      CategoryCard(
                          title: "Relax",
                          subTitle: "Refraim stress"),
                      CategoryCard(
                          title: "Focus",
                          subTitle: "Focus on work"),
                      CategoryCard(
                          title: "Love",
                          subTitle: "Love yourself"),
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

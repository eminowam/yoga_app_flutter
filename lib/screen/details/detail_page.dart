import 'package:flutter/material.dart';
import 'package:yoga_ui/color/color.dart';
import 'package:yoga_ui/widget/details/detail_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: AppColor.mainScreenColor,
        elevation: 0,
      ),
      backgroundColor: AppColor.mainScreenColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DetailsYoga(),
            SizedBox()
          ],
        ),
      ),
    );
  }
}

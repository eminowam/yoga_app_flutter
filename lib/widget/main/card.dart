import 'package:flutter/material.dart';

class YogaCards extends StatelessWidget {
  const YogaCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Recommended Courses",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

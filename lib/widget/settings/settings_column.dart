import 'package:flutter/material.dart';

class SettingsTextColumn extends StatelessWidget {
  const SettingsTextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Day 5",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 6,
        ),
        Text("Essentials"),
        SizedBox(
          height: 14,
        ),
        Image(image: AssetImage('assets/play.png'))
      ],
    );
  }
}

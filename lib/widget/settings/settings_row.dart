import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  const SettingsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Namaste,\nKate",
        style: TextStyle(fontSize: 34,
        fontWeight: FontWeight.w500),),
        Image(image: AssetImage('assets/settings_yoga.png'))
      ],

    );
  }
}

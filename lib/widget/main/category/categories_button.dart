import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga_ui/screen/settings/settings.dart';

import '../../../color/color.dart';

class CategoriesButton extends StatelessWidget {
  const CategoriesButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 4, right: 8),
      child: SizedBox(
          width: 100, // <-- Your width
          height: 40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {},
              child: Text(
                text,
                style: Theme.of(context).textTheme.labelLarge
              ))),
    );
  }
}

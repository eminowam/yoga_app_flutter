import 'package:flutter/material.dart';

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
      margin: const  EdgeInsets.only(left: 4,right: 8),
      child: SizedBox(
          width: 100, // <-- Your width
          height: 40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.white),
              onPressed: () {
              },
              child: Text(text,
                style: TextStyle(
                    color: AppColor.mainTextColor,fontWeight: FontWeight.w400
                ),))),
    );
  }
}


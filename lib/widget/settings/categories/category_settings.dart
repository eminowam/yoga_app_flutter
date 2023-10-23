import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 150,
            height: 150,
            child: GestureDetector(
              // onTap: onPressed,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 6,
                   child: ListTile(
                      leading: Image(
                        image: AssetImage('assets/pose.png'),
                      ),
                      title: Text(
                        title,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        subTitle,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
              ),
            ),
    );
  }
}

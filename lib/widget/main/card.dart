import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YogaCards extends StatelessWidget {
  const YogaCards({super.key, required this.title, required this.subTitle, required this.onPressed, required this.image});
final String title;
final String subTitle;
final String image;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    Container(
      width: double.infinity,
      height: 100,
      child: GestureDetector(
        onTap: onPressed,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Theme.of(context).colorScheme.secondary ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ListTile(
        leading: Image(image: AssetImage(image),),
        title:  Text(title,
        style: Theme.of(context).textTheme.headlineSmall),
        subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelLarge,
        ),
        ),
            ],
          ),
        ),
      ),
    ),
        ]
    ),
    );
  }
}

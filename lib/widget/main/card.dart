import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga_ui/screen/details/detail_page.dart';

class YogaCards extends StatelessWidget {
  const YogaCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommended Courses",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 16,
          ),
    Container(
      width: 400,
      height: 100,
      child: GestureDetector(
        onTap: () =>
        Navigator.push(context, CupertinoPageRoute(builder: (_) => DetailsScreen())
        ),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ListTile(
        leading: Image(image: AssetImage('assets/yoga.png'),),
        title: const Text('Yoga Pilates',
        style: TextStyle(fontSize: 16,
        fontWeight: FontWeight.w500),),
        subtitle: Text(
        '5 lessons',
        style: TextStyle(fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black.withOpacity(0.6),),
        ),
        ),
            ],
          ),
        ),
      ),
    ),
          SizedBox(height: 10,),
          Container(
            width: 400,
            height: 100,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Image(image: AssetImage('assets/yoga2.png'),),
                    title: const Text('Full Body Stretch',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500),),
                    subtitle: Text(
                      '5 lessons',
                      style: TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.6),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 400,
            height: 100,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Image(image: AssetImage('assets/yoga3.png'),),
                    title: const Text('Gentle Flow',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500),),
                    subtitle: Text(
                      '5 lessons',
                      style: TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.6),),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ]
    ),
    );
  }
}

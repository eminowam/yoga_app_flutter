
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../color/color.dart';

class ButtonModel{
  final String text;

  ButtonModel(this.text);
}
class CategoriesState extends StatefulWidget {
  CategoriesState({super.key});

  @override
  State<CategoriesState> createState() => _CategoriesStateState();
}

class _CategoriesStateState extends State<CategoriesState> {
  Color buttonColor=AppColor.categoriesButtonColor;

  var button = ButtonModel("test");

  List<ButtonModel> titles = [
    ButtonModel("5-10 min"),
    ButtonModel("15-20 min"),
    ButtonModel("+ 25 min"),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Browser Category",
          style:TextStyle(fontSize: 18,
              fontWeight: FontWeight.w400) ,),
        SizedBox(height: 16,),
        Row(
          children: [
            ...titles.map((e) => _CategoriesButton(
              text: e.text,
            )),
          ],
        )
      ],
    );
  }
}


class _CategoriesButton extends StatelessWidget {
  const _CategoriesButton({
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


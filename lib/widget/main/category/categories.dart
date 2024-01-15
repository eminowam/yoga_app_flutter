
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../color/color.dart';
import 'categories_button.dart';

class ButtonModel{
  final String text;

  ButtonModel(this.text);
}
class CategoriesState extends StatefulWidget {
  const CategoriesState({super.key});

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
          style:Theme.of(context).textTheme.headlineMedium
        ),
        const SizedBox(height: 16,),
        Row(
          children: [
            ...titles.map((e) => CategoriesButton(
              text: e.text,
            )),
          ],
        )
      ],
    );
  }
}



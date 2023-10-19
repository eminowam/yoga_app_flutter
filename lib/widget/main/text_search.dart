import 'package:flutter/material.dart';

class TextSearch extends StatelessWidget {
  const TextSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.bottomRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your Practice",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400
            ),),
          SizedBox(height: 32,),
          SearchBar(
            hintText: "Form placeholder",
            hintStyle: MaterialStateProperty.all(
              TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(horizontal: 15)),
            trailing: const [Icon(Icons.search)],),
        ],
      ),
    );
  }
}


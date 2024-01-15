import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextSearch extends StatefulWidget {
  const TextSearch({super.key});

  @override
  State<TextSearch> createState() => _TextSearchState();
}

class _TextSearchState extends State<TextSearch> {
  // bool stateSwitch = false;


  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool stateSwitch = false;

    return Container(
        alignment: Alignment.bottomRight,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your Practice",
                        style: Theme
                            .of(context)
                            .textTheme
                            .titleLarge),
                    CupertinoSwitch(
                      value: stateSwitch,
                      onChanged: (value) {
                        setState(() {
                          stateSwitch = value;
                          value
                              ? _toggleTheme(ThemeMode.dark)
                              : _toggleTheme(ThemeMode.light);
                        });
                        print('object');


                      },

                      activeColor: Colors.black87,
                      trackColor: CupertinoColors.inactiveGray,
                      thumbColor: CupertinoColors.white,
                    ),

                  ]
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: const Color(0xff797979),
                  fillColor: Theme
                      .of(context)
                      .colorScheme
                      .primary,
                  contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  border: OutlineInputBorder(
                    borderSide:
                    const BorderSide(width: 0.7, color: Color(0xff797979)),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  hintText: "Form placeholder ",
                  hintStyle:
                  const TextStyle(color: Color(0xff797979), fontSize: 14),
                  prefixIcon: const Icon(
                      Icons.search, color: Color(0xff797979)),
                  prefixIconColor: Colors.black,
                ),
              ),
            ]
        ));
  }
}

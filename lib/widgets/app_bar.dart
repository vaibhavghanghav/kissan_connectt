import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String myText;

  const MyAppBar({super.key, required this.myText});

  @override
  Widget build(BuildContext context) {
    return Text(myText);
  }
}

import 'package:flutter/material.dart';
class MainAppBar extends StatelessWidget {
  const MainAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

TextSpan titleAppBar(BuildContext context) {
  return TextSpan(
    style: Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(fontWeight: FontWeight.bold),
    children: [
      TextSpan(
        text: "Corretor",
        style: TextStyle(color: Colors.black),
      ),
      TextSpan(
        text: ".",
        style: TextStyle(color: Colors.blue),
      ),
      TextSpan(
        text: "News",
        style: TextStyle(color: Colors.lightBlue),
      ),
    ],
  );
}

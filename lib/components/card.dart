import 'package:flutter/material.dart';

Widget card(
    {double width = double.infinity, double padding = 20, Widget? child}) {
  return Container(
    width: width,
    padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: child,
  );
}

import 'package:flutter/material.dart';

Widget card(
    {double width = double.infinity, double padding = 20, Widget? child}) {
  return Card(
    elevation: 7,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
      child: child,
    ),
  );
}

import 'package:flutter/material.dart';

Widget categoriesTitle(BuildContext context, {String? categorytitle}) {
  return Card(
    color: Colors.grey[100],
    elevation: 05,
    child: Container(
      alignment: Alignment.center,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(
            '$categorytitle',
          ),
        ),
      ),
    ),
  );
}

import 'package:corretor_news/models/posts.dart';
import 'package:corretor_news/theme/const_values.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class RefreshButton extends StatefulWidget {
  final String? text;
  final VoidCallback? onPressed;

  RefreshButton({this.text, this.onPressed});
  @override
  _RefreshButtonState createState() => _RefreshButtonState();
}

class _RefreshButtonState extends State<RefreshButton> {
  @override
  Widget build(BuildContext context) {
    final Posts changeData = Hive.box(appState).get('state');
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return changeData.isDark == false ? subColor : Colors.transparent;
        }),
      ),
      onPressed: widget.onPressed,
      child: Text(
        '${widget.text}',
        style: TextStyle(
          color: defaultWhite,
        ),
      ),
    );
  }
}

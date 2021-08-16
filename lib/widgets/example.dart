import 'package:flutter/material.dart';
import 'package:corretor_news/network/wp_api.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  WpApi api = WpApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Example"),
        ),
        body: Column(children: <Widget>[
          TextField(
            style: TextStyle(),
            textAlign: TextAlign.center,
          )
        ]));
  }
}

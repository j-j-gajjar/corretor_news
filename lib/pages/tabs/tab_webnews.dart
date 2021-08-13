import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(TabWebNews());
}

class TabWebNews extends StatefulWidget {
  @override
  _TabWebNewsState createState() => _TabWebNewsState();
}

class _TabWebNewsState extends State<TabWebNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: WebView(
              initialUrl: "https://exame.com/mercado-imobiliario/",
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ],
      ),
    );
  }
}

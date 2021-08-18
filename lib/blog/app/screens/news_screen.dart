import 'package:corretor_news/providers/theme_provider.dart';
import 'package:corretor_news/theme/const_values.dart';
import 'package:corretor_news/widgets/horizonatl_view.dart';
import 'package:corretor_news/widgets/list_view_post.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TabNews extends StatefulWidget {
  @override
  _TabNewsState createState() => _TabNewsState();
}

class _TabNewsState extends State<TabNews> {
  var dateFormat = DateFormat.yMMMMEEEEd().format(DateTime.now());

  Box? storeData;

  @override
  void initState() {
    super.initState();
    HorizontalView();
    ListViewPost();
    storeData = Hive.box(appState);
  }

  // fucntion to refersh page.
  Future<Null> refreshPage() async {
    Future.delayed(Duration(seconds: 2));
    setState(() {});
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final isThemeChange = Provider.of<ThemeProvider>(context);
    return SafeArea(
      top: true,
      child: Scaffold(
        // backgroundColor: changeData.isDark == false ? mainColor : darkColor,
        body: RefreshIndicator(
          onRefresh: refreshPage,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: setContainerHeight(290),
                    decoration: BoxDecoration(
                      color: isThemeChange.mTheme == false
                          ? Colors.white
                          : Colors.grey[900],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(33),
                        bottomRight: Radius.circular(33),
                      ),
                    ),
                    child: Container(
                      height: setContainerHeight(290),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: setContainerHeight(50),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Últimas",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: setTextSize(25),
                                    ),
                                  ),
                                  Text(
                                    "$dateFormat",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: setTextSize(18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          HorizontalView(),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, bottom: 10, top: 15),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Smart Phones",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: setTextSize(20),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  ListViewPost(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

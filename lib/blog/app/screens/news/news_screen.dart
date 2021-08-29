import 'package:corretor_news/providers/theme_provider.dart';
import 'package:corretor_news/theme/app_texts.dart';
import 'package:corretor_news/theme/const_values.dart';
import 'package:corretor_news/widgets/card_featured.dart';
import 'package:corretor_news/widgets/horizonatl_view.dart';
import 'package:corretor_news/widgets/list_view_post%20.dart';
import 'package:corretor_news/widgets/list_view_post_b.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TabNews extends StatefulWidget {
  @override
  _TabNewsState createState() => _TabNewsState();
}

class _TabNewsState extends State<TabNews> {
  var dateFormat = DateFormat.yMMMd().format(DateTime.now());

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
    Future.delayed(Duration(seconds: 3));
    setState(() {});
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final isThemeChange = Provider.of<ThemeProvider>(context);
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 64,
          title: Text(
            "$dateFormat",
          ),
        ),
        // backgroundColor: changeData.isDark == false ? mainColor : darkColor,
        body: RefreshIndicator(
          onRefresh: refreshPage,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  // height: setContainerHeight(290),
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
                    // color: Colors.pink,
                    height: setContainerHeight(380),
                    child: Column(
                      children: <Widget>[
                        // SizedBox(height: 10),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Text(
                              "Destaques",
                              style: textTheme.headline4,

                              // TextStyle(
                              //   fontWeight: FontWeight.w600,
                              //   fontSize: setTextSize(32),
                              // ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Expanded(flex: 1, child: CardFeaturedPost()),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: 120),
                Container(
                  padding: EdgeInsets.only(left: 32, bottom: 10, top: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Últimas Notícias",
                        style: textTheme.headline5,
                        textAlign: TextAlign.start,
                      ),

                      // ListPostVertical(),

                      // ListViewPost(),
                    ],
                  ),
                ),
                // ListViewPost(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:corretor_news/blog/app/screens/settings.dart';
import 'package:corretor_news/providers/theme_provider.dart';
import 'package:corretor_news/theme/const_values.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

import 'bookmark.dart';
import 'category.dart';
import 'news_screen.dart';

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': TabNews(),
    },
    {
      'page': Bookmark(),
    },
    {
      'page': Category(),
    },
    {
      'page': Settings(),
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Box? storeData;

  @override
  void initState() {
    super.initState();
    storeData = Hive.box(appState);
  }

  @override
  Widget build(BuildContext context) {
    final isThemeChange = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NaijaTechGuy Blog",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
                isThemeChange.mTheme ? Icons.brightness_6 : Icons.brightness_3),
            onPressed: () {
              isThemeChange.checkTheme();
            },
          )
        ],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor:
            isThemeChange.mTheme == false ? defaultWhite : Colors.grey[850],
        selectedIndex: _selectedPageIndex,
        onItemSelected: _selectPage,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor:
                isThemeChange.mTheme == false ? subColor : defaultWhite,
            inactiveColor:
                isThemeChange.mTheme == false ? defaultBlack : defaultWhite,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Bookmarked'),
            activeColor:
                isThemeChange.mTheme == false ? subColor : defaultWhite,
            inactiveColor:
                isThemeChange.mTheme == false ? defaultBlack : defaultWhite,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.list),
            title: Text('Category'),
            activeColor:
                isThemeChange.mTheme == false ? subColor : defaultWhite,
            inactiveColor:
                isThemeChange.mTheme == false ? defaultBlack : defaultWhite,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.info),
            title: Text('About'),
            activeColor:
                isThemeChange.mTheme == false ? subColor : defaultWhite,
            inactiveColor:
                isThemeChange.mTheme == false ? defaultBlack : defaultWhite,
          )
        ],
      ),
    );
  }
}

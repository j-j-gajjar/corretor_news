import 'package:corretor_news/pages/tabs/tab_indices.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'components/app_title_bar.dart';
import 'indice_pages.dart';
import 'pages/tabs/tab_webnews.dart';
import 'theme/app_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:provider/provider.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
// import 'package:wordpress_flutter/tabs/comissa_tab.dart';
// import 'package:wordpress_flutter/tabs/cursos_tab.dart';
// import 'package:wordpress_flutter/tabs/ind_tab.dart';
// import 'package:wordpress_flutter/tabs/indices_tab.dart';
// import '../services/theme_changer.dart';
// import '../tabs/home_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kBgLightColor,
        toolbarHeight: 80,
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: GestureDetector(
            child: Icon(Icons.menu_open, color: Colors.black38),
          ),
        ),
        title: Center(
          child: RichText(
            text: titleAppBar(context),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 26),
            child: GestureDetector(
              child: Icon(
                Icons.light_mode_outlined,
                color: Colors.black38,
              ),
            ),
          )
        ],
      ),
      body: IndexedStack(
        alignment: Alignment.center,
        index: currentIndex,
        children: <Widget>[
          TabIndices(),
          TabWebNews(),
          TabComissa(),
          TabCursos(),
        ],
        // children: <Widget>[
        //   IndTabPage(),
        //   NewsTab(),
        //   ComissaTab(),
        //   CursosTab(),
        // ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        margin: EdgeInsets.all(20),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: FaIcon(FontAwesomeIcons.chartBar),
            title: Text('Indíces'),
            selectedColor: Colors.amber,
          ),
          SalomonBottomBarItem(
            icon: FaIcon(FontAwesomeIcons.newspaper),
            title: Text('Notícias'),
            selectedColor: Colors.lightBlue.withOpacity(0.7),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.calculate_outlined),
            activeIcon: Icon(Icons.calculate),
            title: Text('Calculadora'),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.info_outline),
            title: Text('Infos'),
            selectedColor: Colors.red,
          ),
        ],
      ),
    );
  }
}

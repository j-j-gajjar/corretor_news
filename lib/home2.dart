import 'package:corretor_news/pages/tabs/tab_indices.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'blog/app/screens/news_screen.dart';
import 'components/app_title_bar.dart';
import 'indice_pages.dart';
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

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int currentIndex = 3;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: MyAppBar(),
      body: new Stack(
        children: <Widget>[
          new Offstage(
            offstage: index != 0,
            child: new TickerMode(
              enabled: index == 0,
              child: new MaterialApp(home: new TabIndices()),
            ),
          ),
          new Offstage(
            offstage: index != 1,
            child: new TickerMode(
              enabled: index == 1,
              child: new MaterialApp(home: new TabNews()),
            ),
          ),
          new Offstage(
            offstage: index != 2,
            child: new TickerMode(
              enabled: index == 2,
              child: new MaterialApp(home: new TabComissa()),
            ),
          ),
          new Offstage(
            offstage: index != 3,
            child: new TickerMode(
              enabled: index == 3,
              child: new MaterialApp(home: new TabComissa()),
            ),
          ),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: "Left",
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            label: "Right",
          ),
        ],
      ),
    );
  }

  @override
  Widget buil(BuildContext context) {
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
      body: Stack(
        alignment: Alignment.center,
        // index: currentIndex,
        children: <Widget>[
          TabIndices(),
          TabNews(),
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

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}

class MainBottomBar extends StatelessWidget {
  const MainBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndex = 3;

    return SalomonBottomBar(
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
    );
  }

  void setState(Null Function() param0) {}
}

import 'package:corretor_news/blog/app/screens/settings.dart';
import 'package:corretor_news/pages/tabs/tab_indices.dart';
import 'package:corretor_news/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'blog/app/screens/news/news_screen.dart';
import 'indice_pages.dart';
import 'theme/app_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    final isThemeChange = Provider.of<ThemeProvider>(context);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor:
            isThemeChange.mTheme == false ? kBgLightColor : Colors.grey[850],
        toolbarHeight: 80,
        elevation: 4,
        leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              // icon: Icon(Icons.menu_open),
              icon: Icon(Icons.menu),

              tooltip: 'Configurações',
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Settings()));
              },
            )

            // GestureDetector(
            //   child: Icon(Icons.menu_open, color: Colors.black38),
            // ),

            ),
        title: Image.asset(
          'assets/images/logo.png',
          width: 15,
        ),

        // Center(
        //   child: RichText(
        //     text: titleAppBar(context),
        //   ),
        // ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 26),
            child: GestureDetector(
                child: IconButton(
              icon: Icon(isThemeChange.mTheme
                  ? Icons.brightness_6
                  : Icons.brightness_3),
              onPressed: () {
                isThemeChange.checkTheme();
              },
            )),
          )
        ],
      ),
      body: IndexedStack(
        alignment: Alignment.center,
        index: currentIndex,
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

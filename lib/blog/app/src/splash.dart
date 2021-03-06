import 'dart:async';
import 'package:corretor_news/home.dart';
import 'package:corretor_news/theme/const_values.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Box? storeData;
  @override
  void initState() {
    super.initState();
    storeData = Hive.box(appState);
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return HomePage();
        // return TabView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Expanded(
                  child: Image.asset(
                    'assets/logo/logo_full.png',
                    height: setContainerHeight(320),
                    width: setContainerWidth(320),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(60),
                child: Image.asset(
                  'assets/images/newLoading.gif',
                  height: setContainerHeight(60),
                  width: setContainerWidth(60),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

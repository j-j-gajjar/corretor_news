import 'package:flutter/material.dart';
import 'theme/const_values.dart';

ThemeData buildLightTheme() => ThemeData.light().copyWith(
      cardColor: Colors.white,
      backgroundColor: Colors.grey[100],
      accentColor: Colors.grey[800],
      scaffoldBackgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: defaultBlack,
      ),
      cardTheme: CardTheme(
        color: Colors.white,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: defaultWhite,
      ),
      dividerColor: defaultWhite,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        brightness: Brightness.dark,
        elevation: 0.0,
        color: defaultWhite,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.grey[900],
        ),
      ),
      textTheme: Typography.blackCupertino,
    );

ThemeData buildDarkTheme() => ThemeData.dark().copyWith(
      cardColor: Colors.grey[850],
      backgroundColor: Colors.grey[900],
      accentColor: Colors.grey[400],
      scaffoldBackgroundColor: darkColor,
      dividerColor: defaultBlack,
      iconTheme: IconThemeData(
        color: defaultWhite,
      ),
      cardTheme: CardTheme(
        color: cardColor,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: defaultBlack,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        brightness: Brightness.dark,
        elevation: 0.0,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        color: Colors.grey[900],
        iconTheme: IconThemeData(
          color: Colors.grey[400],
        ),
      ),
      textTheme: Typography.whiteCupertino,
    );

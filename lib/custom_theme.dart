import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/const_values.dart';

ThemeData buildLightTheme() => ThemeData.light().copyWith(
      cardColor: Colors.white,
      backgroundColor: Colors.grey[100],
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
        elevation: 0.0,
        color: defaultWhite,
        iconTheme: IconThemeData(
          color: Colors.grey[900],
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        toolbarTextStyle: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ).bodyText2,
        titleTextStyle: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ).headline6,
      ),
      textTheme: Typography.blackCupertino,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[800]),
    );

ThemeData buildDarkTheme() => ThemeData.dark().copyWith(
      cardColor: Colors.grey[850],
      backgroundColor: Colors.grey[900],
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
        elevation: 0.0,
        color: Colors.grey[900],
        iconTheme: IconThemeData(
          color: Colors.grey[400],
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        toolbarTextStyle: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ).bodyText2,
        titleTextStyle: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ).headline6,
      ),
      textTheme: Typography.whiteCupertino,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[400]),
    );

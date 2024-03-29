import 'package:flutter/material.dart';
import 'package:lofi_music/constants/colors.dart';

class ThemeConfig {

  ThemeData themeData = ThemeData(
      appBarTheme: AppBarTheme(
        color: appColor,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.teal,
        ),
      ),
      scaffoldBackgroundColor: appColor,
      textTheme: TextTheme(
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
      ).apply(
        bodyColor: Colors.teal[800],
      )

  );

  ThemeData getLightTheme() => ThemeData(
    backgroundColor: Colors.white,
    accentColor: Colors.white70,
    primaryColor: Color(0XFFfff2f2),
    dialogBackgroundColor: Colors.white70,
    cardColor: Colors.white.withOpacity(0.7),
    primaryColorLight: Color(0xFF363030),
    scaffoldBackgroundColor: Colors.white,
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0xFF545050),
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      ),
      headline2: TextStyle(
        color: Color(0xFF545050),
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
      ),
      headline3: TextStyle(
        color: Color(0xFF545050),
        fontWeight: FontWeight.w300,
        fontSize: 18.0,
      ),
      headline4: TextStyle(
        color: Color(0xFF545050),
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
      ),
      headline5: TextStyle(
        color: Color(0xFF545050),
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
      ),
      bodyText1: TextStyle(
        color: Color(0xFF545050),
        fontWeight: FontWeight.w400,
        fontSize: 18.0,
      ),
      bodyText2: TextStyle(
        color: Color(0xFF545050),
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
      ),
    ),
  );

  ThemeData getDarkTheme() => ThemeData(
    backgroundColor: Color(0xFF1B1929),
    accentColor: Color(0xFF4a4e69),
    primaryColor: Color(0XFF22223b),
    dialogBackgroundColor: Color(0XFFbcb8b1),
    cardColor: Color(0XFF415a77),
    primaryColorLight: Color(0xFFf2e9e4),
    scaffoldBackgroundColor: Color(0xFF1B1929),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0xFFf2e9e4),
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      ),
      headline2: TextStyle(
        color: Color(0xFFf2e9e4),
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
      ),
      headline3: TextStyle(
        color: Color(0xFFf2e9e4),
        fontWeight: FontWeight.w300,
        fontSize: 18.0,
      ),
      headline4: TextStyle(
        color: Color(0xFFf2e9e4),
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
      ),
      headline5: TextStyle(
        color: Color(0xFFf2e9e4),
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
      ),
      headline6: TextStyle(
        color: Color(0xFFf2e9e4),
        fontWeight: FontWeight.w300,
        fontSize: 12.0,
      ),
      bodyText1: TextStyle(
        color: Color(0xFFf2e9e4),
        fontWeight: FontWeight.w400,
        fontSize: 18.0,
      ),
      bodyText2: TextStyle(
        color: Color(0xFFf2e9e4),
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
      ),
    ),
  );

}
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
    fontFamily: 'Google Sans',
    scaffoldBackgroundColor: const Color(0xff121318),
    backgroundColor: Colors.black,
    primaryColor: const Color(0xfff8a30e),
    primaryColorLight: const Color(0xff1e212a),
    hintColor: const Color(0xff6a6c74),
    canvasColor: Colors.black,
    accentColor: const Color(0xff8c98a8),
    secondaryHeaderColor: Colors.white,
    dividerColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      iconTheme: IconThemeData(color: const Color(0xfff8a30e)),
      elevation: 0,
    ),
    textTheme: const TextTheme(
      button: TextStyle(
          color: Colors.white,
          fontSize: 18,
          letterSpacing: 2,
          fontWeight: FontWeight.w700),
      bodyText1: TextStyle(),
      headline2: TextStyle(),
      headline3: TextStyle(),
      headline4: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      headline1: TextStyle(),
      subtitle1: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
      subtitle2: TextStyle(
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
      headline6: TextStyle(),
      bodyText2: TextStyle(),
    ),
    platform: TargetPlatform.android);
final ThemeData lightTheme = ThemeData(
    fontFamily: 'Google Sans',
    scaffoldBackgroundColor: const Color(0xffF7FAF5),
    accentColor: const Color(0xff8c98a8),
    backgroundColor: Colors.white,
    primaryColor: const Color(0xff6AC932),
    primaryColorLight: Colors.white,
    hintColor: const Color(0xff6a6c74),
    canvasColor: Colors.white,
    secondaryHeaderColor: Colors.black,
    dividerColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      iconTheme: IconThemeData(color: const Color(0xff6AC932)),
      elevation: 0,
    ),
    textTheme: const TextTheme(
      button: TextStyle(
          color: Colors.white,
          fontSize: 18,
          letterSpacing: 2,
          fontWeight: FontWeight.w700),
      bodyText1: TextStyle(),
      headline2: TextStyle(),
      headline3: TextStyle(),
      headline4: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
      headline1: TextStyle(),
      subtitle1: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
      subtitle2: TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
      headline6: TextStyle(),
      bodyText2: TextStyle(),
    ),
    platform: TargetPlatform.android);

/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5

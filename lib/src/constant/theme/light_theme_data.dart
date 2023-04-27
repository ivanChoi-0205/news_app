import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'light_text_theme.dart';

final ThemeData lightThemeData = ThemeData(
  useMaterial3: true,
  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
  // colorSchemeSeed: Colors.amber,

  // scaffoldBackgroundColor: Colors.grey.shade100,
  scaffoldBackgroundColor: const Color(0xFFFAFAFA),
  // scaffoldBackgroundColor: Colors.amber,
  brightness: Brightness.light,
  textTheme: lightTextTheme,
  appBarTheme: const AppBarTheme(),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      side: BorderSide(width: 1.0, color: Colors.black),
    ),
  ),
  cardTheme: CardTheme(
    elevation: 2,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.0),
    ),
  ),
  extensions: const [
    AppTheme(
      appBarBackground: [
        Colors.blue,
        Colors.lightBlueAccent,
      ],
    ),
  ],
  // colorScheme: ColorScheme(
  //   brightness: Brightness.light,
  //   background: Colors.grey.shade200,
  //   error: Colors.red.shade400,
  //   onBackground: Colors.white,
  //   onError: Colors.red.shade200,
  //   onPrimary: Colors.white,
  //   onSecondary: Colors.white,
  //   onSurface: Colors.white,
  //   primary: Colors.white,
  //   secondary: Colors.white,
  //   surface: Colors.white,
  // ),
);

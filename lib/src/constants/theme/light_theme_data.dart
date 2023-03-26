import 'package:flutter/material.dart';
import 'light_text_theme.dart';

final ThemeData lightThemeData = ThemeData(
  useMaterial3: true,
  // the above setting use in both light theme and dark theme
  scaffoldBackgroundColor: Colors.grey.shade100,
  brightness: Brightness.light,
  textTheme: lightTextTheme,
  primarySwatch: Colors.blue,
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

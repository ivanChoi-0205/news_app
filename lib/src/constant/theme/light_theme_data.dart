import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'color_palette.dart';
import 'light_text_theme.dart';

final ThemeData lightThemeData = ThemeData(
  useMaterial3: true,
  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
  // colorSchemeSeed: Colors.amber,

  scaffoldBackgroundColor: Colors.grey.shade100,
  // scaffoldBackgroundColor: const Color(0xFFFAFAFA),
  // scaffoldBackgroundColor: const Color(0xFFF0F0F0),
  colorScheme: const ColorScheme.light().copyWith(
    primary: ColorPalette.primaryColor,
    // Color? onPrimary,
    // Color? primaryContainer,
    // Color? onPrimaryContainer,
    // Color? secondary,
    // Color? onSecondary,
    // Color? secondaryContainer,
    // Color? onSecondaryContainer,
    // Color? tertiary,
    // Color? onTertiary,
    // Color? tertiaryContainer,
    // Color? onTertiaryContainer,
    // Color? error,
    // Color? onError,
    // Color? errorContainer,
    // Color? onErrorContainer,
    // Color? background,
    // Color? onBackground,
    // Color? surface,
    // Color? onSurface,
    // Color? surfaceVariant,
    // Color? onSurfaceVariant,
    // Color? outline,
    // Color? outlineVariant,
    // Color? shadow,
    // Color? scrim,
    // Color? inverseSurface,
    // Color? onInverseSurface,
    // Color? inversePrimary,
    // Color? surfaceTint,
    // Color? primaryVariant,
    // Color? secondaryVariant,
  ),
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
    elevation: 8,
    color: Colors.white,
    shadowColor: Colors.red,
    surfaceTintColor: Colors.amber,
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
);

import 'package:flutter/material.dart';
import 'package:news_app/src/constant/theme/light_theme_data.dart';

import 'app_theme.dart';

final ThemeData darkThemeData = lightThemeData.copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF031329),
  extensions: [
    const AppTheme(
      appBarBackground: [
        Colors.amber,
        Colors.yellow,
      ],
    ),
  ],
);

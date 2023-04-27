import 'package:flutter/material.dart';

@immutable
class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    required this.appBarBackground,
  });

  final List<Color> appBarBackground;

  @override
  ThemeExtension<AppTheme> copyWith() {
    return AppTheme(
      appBarBackground: appBarBackground,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
    covariant ThemeExtension<AppTheme> other,
    double t,
  ) {
    if (other is! AppTheme) {
      return this;
    }

    return AppTheme(
      appBarBackground: getGradientColorLerp(
        gradientColors: appBarBackground,
        others: other.appBarBackground,
        t: t,
      ),
    );
  }

  List<Color> getGradientColorLerp({
    required List<Color> gradientColors,
    required List<Color> others,
    required double t,
  }) {
    try {
      return List.generate(
        gradientColors.length,
        (index) {
          Color oldColor = gradientColors[index];
          Color newColor = others[index];
          return Color.lerp(oldColor, newColor, t) as Color;
        },
      );
    } catch (e) {
      return gradientColors;
    }
  }

  // put light theme and dark theme here
}

// class LightAppTheme extends AppTheme {
//   final List<Color> appBarBackground = [
//     Colors.blue,
//     Colors.lightBlueAccent,
//   ];
// }

// class DarkAppTheme extends AppTheme {
//   final List<Color> appBarBackground = [
//     Colors.amber,
//     Colors.yellow,
//   ];
// }

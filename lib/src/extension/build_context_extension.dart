import 'package:flutter/material.dart';

import '../constant/theme/app_theme.dart';

extension BuildContextExtension on BuildContext {
  // route
  // padding
  // theme/style
  AppTheme get customThemeColors => Theme.of(this).extension<AppTheme>()!;
}

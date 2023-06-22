import 'package:flutter/material.dart';

import 'theme/color_palette.dart';

TextStyle getGenerateTextStyle() => TextStyle(
      color: ColorPalette.textColor,
      fontSize: 18.0,
      height: 1.5,
      fontWeight: FontWeight.w400,
      letterSpacing: 5,
      // fontWeight: FontWeight.bold,
    );

// TextStyle kk() {
//   return Theme.of(context).textTheme.displayLarge;
//   // return DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0);
// }

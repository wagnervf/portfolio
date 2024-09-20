import 'package:flutter/material.dart';

class Utils {
  // static bool isDarkMode(BuildContext context) {
  //   return context.read<ThemeNotifierController>().getThemeIsDark();
  // }

    static bool isDarkMode(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.brightness == Brightness.dark;
  }
}

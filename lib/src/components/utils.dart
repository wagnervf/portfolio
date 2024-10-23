import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Utils {
  // static bool isDarkMode(BuildContext context) {
  //   return context.read<ThemeNotifierController>().getThemeIsDark();
  // }

  static bool isDarkMode(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.brightness == Brightness.dark;
  }

  static double islargerThanHeight(BuildContext context) {
    bool largerThan = ResponsiveBreakpoints.of(context).largerThan(DESKTOP);
    double height = MediaQuery.of(context).size.height;
    return largerThan ? height * .7 : height;
  }
}

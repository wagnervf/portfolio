import 'package:flutter/material.dart';
import 'package:portfolio/src/controllers/theme/controller/theme_notifier_controller.dart';
import 'package:provider/provider.dart';

class IconChangeTheme extends StatelessWidget {
  const IconChangeTheme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: IconButton(
            icon: Icon(
              Provider.of<ThemeNotifierController>(context).themeMode == ThemeMode.dark
                  ? Icons.nightlight_round
                  : Icons.wb_sunny,
            ),
            onPressed: () {
              Provider.of<ThemeNotifierController>(context, listen: false).toggleTheme();
            },
      ),
 
    );
  }
}


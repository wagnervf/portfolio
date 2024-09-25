import 'package:flutter/material.dart';
import 'package:portfolio/src/components/typography.dart';
import 'package:portfolio/src/controllers/theme/controller/theme_notifier_controller.dart';
import 'package:portfolio/src/pages/site_page.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifierController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifierController>(
        builder: (context, themeNotifier, child) {
      return MaterialApp(
        title: 'Wagner Freiria Portfolio',
        theme: buildLightTheme(),
        darkTheme: buildDarkTheme(),
        themeMode: themeNotifier.themeMode,
        home: const SitePage(),
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}

ThemeData buildLightTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 60,
        color: Colors.black,
        fontFamily: fontFamily,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        color: Colors.black87,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      ),

      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black87,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue, // Botões terão cor azul
      textTheme: ButtonTextTheme.primary,
    ),
  );
}

// Definir tema escuro
ThemeData buildDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: const Color.fromARGB(255, 8, 0, 24),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 60,
        color: Colors.white,
        fontFamily: fontFamily,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        color: Colors.white70,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.black, // Botões terão cor preta
      textTheme: ButtonTextTheme.primary,
    ),
  );
}


//Theme.of(context).textTheme.headline1,  // Usa o estilo do tema

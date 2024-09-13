import 'package:flutter/material.dart';
import 'package:portfolio/src/controllers/theme/controller/theme_notifier_controller.dart';
import 'package:portfolio/src/pages/site_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifierController(),
      child: MyApp(),
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
          title: 'Flutter Theme Switch',
          theme: _buildLightTheme(),
          darkTheme: _buildDarkTheme(),
          themeMode: themeNotifier.themeMode, // Usa o tema atual
          home: const SitePage(),
        );
      },
    );
  }
}

// Definir tema claro
ThemeData _buildLightTheme() {
  return ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Colors.blue, fontSize: 32),
      bodyLarge: TextStyle(color: Colors.black87),
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
ThemeData _buildDarkTheme() {
  return ThemeData(
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black87,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Colors.white, fontSize: 32),
      bodyLarge: TextStyle(color: Colors.white70),
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

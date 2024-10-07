import 'package:flutter/material.dart';
import 'package:portfolio/src/components/typography.dart';

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
        titleMedium: TextStyle(
          fontFamily: 'Google Sans',
          letterSpacing: 0,
          fontSize: 44,
          color: Colors.black87,
          height: 1.2,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Google Sans',
          letterSpacing: 0,
          fontSize: 24,
          color: Colors.black87,
          fontWeight: FontWeight.w700,
          height: 1.2,
        ),
       
        bodyMedium: TextStyle(
          fontSize: 16,
          color: Colors.black87,
          height: 1.5,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w300,
        ),
        labelMedium: TextStyle(color: Color(0Xff0468d7))),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFFFFFFF),
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

import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Google Sans',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 60,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        color: Colors.black87,
        fontWeight: FontWeight.w300,
      ),
       titleLarge: TextStyle(
        fontFamily: 'Google Sans',
        letterSpacing: 0,
        fontSize: 64,
        color: Colors.black87,
        fontWeight: FontWeight.w600,
        height: 1.2,
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
        fontFamily: 'Google Sans',
        fontSize: 16,
        color: Colors.black87,
        height: 1.5,
        fontWeight: FontWeight.w300,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Google Sans',
        fontSize: 14,
        color: Colors.black54,
        height: 1.5,
        fontWeight: FontWeight.w300,
      ),
      labelMedium: TextStyle(
        color: Color(0Xff0468d7),
      ),
       headlineMedium: TextStyle(
        fontFamily: 'Google Sans',
        letterSpacing: 2,
        fontSize: 30,
        color: Colors.black87,
        fontWeight: FontWeight.w200,
        height: 1.0,
      ),
    ),
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
    fontFamily: 'Google Sans',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 60,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w300,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Google Sans',
        letterSpacing: 0,
        fontSize: 64,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        height: 1.2,
      ),
     
      titleMedium: TextStyle(
        fontFamily: 'Google Sans',
        letterSpacing: 0,
        fontSize: 44,
        color: Colors.white,
        height: 1.2,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Google Sans',
        letterSpacing: 0,
        fontSize: 24,
        color: Colors.white70,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
       headlineMedium: TextStyle(
        fontFamily: 'Google Sans',
        letterSpacing: 2,
        fontSize: 30,
        color: Colors.white70,
        fontWeight: FontWeight.w200,
        height: 1.0,
      ),
      bodyMedium: TextStyle(
          fontFamily: 'Google Sans',
        fontSize: 16,
        color: Colors.white70,
        height: 1.5,
        fontWeight: FontWeight.w300,
      ),
      labelSmall: TextStyle(
          fontFamily: 'Google Sans',
       fontSize: 14,
        color: Colors.white70,
        height: 1.5,
        fontWeight: FontWeight.w300,
      ),
      labelMedium: TextStyle(
          fontFamily: 'Google Sans',
        color: Color(0Xff0468d7),
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

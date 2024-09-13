import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/src/controllers/theme/color_schemes.g.dart';
import 'package:portfolio/src/controllers/theme/theme.dart';


const pageTransitionsTheme = PageTransitionsTheme(
  builders: <TargetPlatform, PageTransitionsBuilder>{
    TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
    TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
    TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
  },
);

ThemeData get lightTheme => ThemeData(

      useMaterial3: true,
      colorScheme: lightColorScheme,
      pageTransitionsTheme: pageTransitionsTheme, // Add this line
      primaryColor: lightColorScheme.primary,
      cardColor: lightColorScheme.primaryContainer,
      listTileTheme: ListTileThemeData(iconColor: lightColorScheme.primary),
      iconTheme: IconThemeData(color: lightColorScheme.primary),
      scaffoldBackgroundColor: Colors.grey[200],
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: lightColorScheme.onPrimary,
        iconTheme: IconThemeData(color: lightColorScheme.primary),
        elevation: 0,
        titleTextStyle: TextStyle(color: lightColorScheme.primary),
        //foregroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: lightColorScheme.onPrimary,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightColorScheme.background,
        foregroundColor: lightColorScheme.onPrimary,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(color:Colors.white),
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: lightColorScheme.secondary,
        showUnselectedLabels: true,
        selectedItemColor: lightColorScheme.primary,
        showSelectedLabels: true,
        elevation: 10,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        type: BottomNavigationBarType.fixed,
      ),
      segmentedButtonTheme: _segmentedButtonTheme(),
      textTheme: TextTheme(
        displayLarge:  TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: lightColorScheme.primary,
        ),
        displayMedium: TextStyle(
          color: lightColorScheme.primary,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          color: lightColorScheme.primary,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        labelMedium: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
         // color: lightColorScheme.primary,
        ),
        labelSmall: TextStyle(
          color: lightColorScheme.primary,
        ),
        titleLarge: const TextStyle(fontWeight: FontWeight.bold,),
        titleMedium: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        titleSmall: const TextStyle(
           // color: lightColorScheme.primary, 
            fontWeight: FontWeight.bold),
      ),
    );

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
     // fontFamily: 'Roboto',
      pageTransitionsTheme: pageTransitionsTheme, 
      brightness: Brightness.dark,
      primaryColor: darkColorScheme.onPrimary,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: darkColorScheme.onPrimary,
        iconTheme: IconThemeData(color: darkColorScheme.onPrimaryContainer),
        elevation: 0,
        titleTextStyle: TextStyle(color: darkColorScheme.onPrimaryContainer),
        foregroundColor: darkColorScheme.onPrimaryContainer,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: darkColorScheme.onPrimary,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      segmentedButtonTheme: _segmentedButtonTheme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: lightColorScheme.onPrimary,
        showUnselectedLabels: true,
        selectedItemColor: lightColorScheme.primary,
        showSelectedLabels: true,
        elevation: 10,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        type: BottomNavigationBarType.fixed,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        
        style: FilledButton.styleFrom(
         backgroundColor: lightColorScheme.primary,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(color:Colors.white ),
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: const TextStyle(
            fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        labelMedium: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          // color: lightColorScheme.primary,
        ),
        labelSmall: TextStyle(color: darkColorScheme.secondary
            //   color: lightColorScheme.primary,
            ),
        titleLarge: const TextStyle(fontWeight: FontWeight.bold,),
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
          // fontSize: 18,
          color: lightColorScheme.onPrimary,
        ),
        titleSmall: TextStyle(
            color: darkColorScheme.secondary, fontWeight: FontWeight.bold),
      ),
    );

// Um gerenciador de estado por Tema
SegmentedButtonThemeData _segmentedButtonTheme() {
  return SegmentedButtonThemeData(style: ButtonStyle(
    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return const TextStyle(fontSize: 9.0);
        }
        return const TextStyle(fontSize: 12.0);
      },
    ),
  ));
}

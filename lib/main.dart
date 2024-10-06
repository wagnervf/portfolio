// import 'package:flutter/material.dart';
// import 'package:portfolio/src/controllers/theme/controller/theme_notifier_controller.dart';
// import 'package:portfolio/src/pages/site_page.dart';
// import 'package:portfolio/src/theme/theme.dart';
// import 'package:provider/provider.dart';
// import 'package:responsive_framework/responsive_framework.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (_) => ThemeNotifierController(),
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeNotifierController>(
//         builder: (context, themeNotifier, child) {
//       return MaterialApp(
//         title: 'Wagner Freiria Portfolio',
//         theme: buildLightTheme(),
//         darkTheme: buildDarkTheme(),
//         themeMode: themeNotifier.themeMode,
//         home: const s(),
//         builder: (context, child) => ResponsiveBreakpoints.builder(
//           child: child!,
//           breakpoints: [
//             const Breakpoint(start: 0, end: 450, name: MOBILE),
//             const Breakpoint(start: 451, end: 800, name: TABLET),
//             const Breakpoint(start: 801, end: 1920, name: DESKTOP),
//             const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
//           ],
//         ),
//         debugShowCheckedModeBanner: false,
//       );
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/src/controllers/theme/controller/theme_notifier_controller.dart';
import 'package:portfolio/src/controllers/theme/controller/language_notifier_controller.dart';
import 'package:portfolio/src/pages/site_page.dart';
import 'package:portfolio/src/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MultiProvider(
    providers: [
     
      ChangeNotifierProvider(
        create: (_) => LanguageNotifierController(),
        lazy: true,
        
      ),
       ChangeNotifierProvider(
        create: (_) => ThemeNotifierController(),
        lazy: true,
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Locale _locale = const Locale('en');

  @override
  void initState() {
    _changeLanguage();
    super.initState();
  }

  void _changeLanguage() {
    WidgetsBinding.instance.addPostFrameCallback((_) { 
      setState(() {
      _locale = Provider.of<LanguageNotifierController>(context, listen:
false).language;
    });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifierController>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          title: 'Wagner Freiria Portfolio',
          theme: buildLightTheme(),
          darkTheme: buildDarkTheme(),
          themeMode: themeNotifier.themeMode,
          locale: _locale, // Define o idioma atual
          supportedLocales: const [
            Locale('en'),
            Locale('pt'),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          home: const SitePage(),
          builder: (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: const [
              Breakpoint(start: 0, end: 450, name: MOBILE),
              Breakpoint(start: 451, end: 800, name: TABLET),
              Breakpoint(start: 801, end: 1920, name: DESKTOP),
              Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageNotifierController with ChangeNotifier {
  Locale _language = const Locale('en');
    late Map<String, String> _localizedStrings = {};


  LanguageNotifierController() {
    _loadTheme();
    loadTranslations(const Locale('en'));
  }

  Locale get language => _language;
  Map<String, String> get localizedStrings => _localizedStrings;

  // Carrega as traduções baseadas no idioma atual
  Future<void> loadTranslations(Locale locale ) async {
    String jsonString = await rootBundle
        .loadString('assets/translations/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));

        log(_localizedStrings.toString());
    notifyListeners();

    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('language', localizedStrings.toString());
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedLanguage = prefs.getString('language');
    _language = savedLanguage == 'en' ? const Locale('en') : const Locale('pt');
    notifyListeners();
  }

  void toggleTranslate(Locale locale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
  //  _language = locale == Locale('en') ? 'en' : 'pt';
  //    prefs.setString('language', 'pt');

    if(locale == const Locale('en')){
       prefs.setString('language', 'en');
    } else{
       prefs.setString('language', 'pt');
    }

    _language = locale;

    // if (_language == const Locale('en')) {
    //   _language = const Locale('pt');
    //   prefs.setString('language', 'pt');
    // } else {
    //   _language = const Locale('en');
    //   prefs.setString('language', 'en');
    // }

    log(_language.toString());
    loadTranslations(_language);
    notifyListeners();
  }

 
}

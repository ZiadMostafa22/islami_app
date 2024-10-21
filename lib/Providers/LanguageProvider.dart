import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  String currentLanguage = 'en';

  void changeAppLanguage(String newLang) {
    if (currentLanguage == newLang) return;
    currentLanguage = newLang;
    saveLang(newLang);
    notifyListeners();
  }

  void saveLang(String lang) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (lang == 'en') {
      prefs.setString('lang', 'en');
    } else {
      prefs.setString('lang', 'ar');
    }
  }

  void getLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString('lang') ?? 'ar';

    if (lang == 'en') {
      currentLanguage = 'en';
    } else {
      currentLanguage = 'ar';
    }
    notifyListeners();
  }
}

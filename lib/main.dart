import 'package:flutter/material.dart';
import 'package:islami/Providers/LanguageProvider.dart';
import 'package:islami/Providers/ThemeProvider.dart';
import 'package:provider/provider.dart';

import 'myApp/myapp.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider()..getTheme(),
    ),
    ChangeNotifierProvider(
      create: (context) => LanguageProvider()..getLang(),
    )
  ], child: MyApp()));
}

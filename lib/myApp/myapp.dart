import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/Presentation/modules/home_module/screens/HadithScreen/hadith_details-screen.dart';
import 'package:islami/Presentation/modules/home_module/screens/QuranDetailsScreen/QuraanDetailsScreen.dart';
import 'package:islami/Presentation/modules/home_module/screens/homescreen.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Hadeeth_Tab/HadeethTab.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Settings_Tab/SettingsTab.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Tasbeeh_Tab/TasbeehTab.dart';
import 'package:islami/Presentation/modules/splash/Splash_Screen.dart';
import 'package:islami/config/theme/theme.dart';
import 'package:islami/core/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.homeRoute: (_) => Homescreen(),
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.quraanDetails: (_) => Quraandetailsscreen(),
        RoutesManager.hadeethTab: (_) => HadeethTabScreen(),
        RoutesManager.hadithDetailsScreen: (_) => HadithDetailsscreen(),
        RoutesManager.SettingsTab: (_) => Settingstab(),
        RoutesManager.TasbeehTab: (_) => TasbeehTab(),
      },
      initialRoute: RoutesManager.splashRoute,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale('en'),
    );
  }
}

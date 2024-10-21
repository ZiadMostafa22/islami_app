import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/core/colors_manager.dart';

class theme {
  static bool isDark = true;
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.lightPrimary,
          primary: ColorManager.lightPrimary,
          secondary: Colors.black),
      textTheme: GoogleFonts.readexProTextTheme().copyWith(
        headlineMedium: GoogleFonts.readexPro(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        titleMedium: GoogleFonts.readexPro(
          fontSize: 19,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.readexPro(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        labelMedium: GoogleFonts.readexPro(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: GoogleFonts.readexPro(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        displayMedium: GoogleFonts.readexPro(
          fontSize: 21,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(ColorManager.lightPrimary),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          elevation: 20,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: ColorManager.lightPrimary),
      dividerColor: ColorManager.lightPrimary,
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        color: Color(0xFFB7935F).withOpacity(.8),
        elevation: 14,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      indicatorColor: Colors.white,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: GoogleFonts.readexPro(
          // Applying Google Fonts explicitly here
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black, // Adjust color if needed
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 20,
      ),
      iconTheme: IconThemeData(color: Colors.white));
  static ThemeData DarkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.darkPrimary,
          primary: ColorManager.darkPrimary,
          secondary: Colors.white),
      textTheme: GoogleFonts.readexProTextTheme().copyWith(
        headlineMedium: GoogleFonts.readexPro(
          // Apply GoogleFonts explicitly
          fontSize: 21,
          fontWeight: FontWeight.w500,
          color: ColorManager.white,
        ),
        titleMedium: GoogleFonts.readexPro(
          fontSize: 19,
          color: ColorManager.yellow,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.readexPro(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: ColorManager.yellow,
        ),
        labelMedium: GoogleFonts.readexPro(
          fontSize: 16,
          color: ColorManager.yellow,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: GoogleFonts.readexPro(
          fontSize: 14,
          color: ColorManager.yellow,
          fontWeight: FontWeight.normal,
        ),
        displayMedium: GoogleFonts.readexPro(
          fontSize: 21,
          color: Colors.yellow,
          fontWeight: FontWeight.w400,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(ColorManager.yellow),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showUnselectedLabels: true,
        elevation: 20,
        selectedItemColor: ColorManager.yellow,
        unselectedItemColor: Colors.white,
        backgroundColor: ColorManager.darkPrimary,
      ),
      dividerColor: ColorManager.yellow,
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        color: ColorManager.darkPrimary,
        elevation: 14,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      indicatorColor: ColorManager.yellow,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: GoogleFonts.readexPro(
          // Applying Google Fonts explicitly here
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.yellow, // Adjust color if needed
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.yellow,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 20,
        backgroundColor: ColorManager.darkPrimary.withOpacity(.7),
      ),
      iconTheme: IconThemeData(color: ColorManager.yellow));
}

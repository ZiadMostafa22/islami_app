import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/core/colors_manager.dart';

class theme {
  static ThemeData lightTheme = ThemeData(
      textTheme: GoogleFonts.readexProTextTheme(),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          elevation: 20,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: ColorManager.goldColor),
      dividerColor: ColorManager.goldColor,
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
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.red,
          )),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 20,
      ));
}

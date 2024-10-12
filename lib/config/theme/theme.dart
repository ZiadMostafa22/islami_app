import 'package:flutter/material.dart';
import 'package:islami/core/colors_manager.dart';

class theme {
  static ThemeData lightTheme = ThemeData(
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
      textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          titleMedium: TextStyle(
            fontSize: 19,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        displayMedium: TextStyle(fontSize: 21, color: ColorManager.goldColor),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
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

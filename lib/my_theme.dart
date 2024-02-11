import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor =  Color(0xff242424);
  static Color primaryLight =  Color(0xffB7935F);
  static Color LightColor =  Color(0xffC9B497);
  static Color WhiteColor =  Color(0xffffffff);
  static Color primaryDark =  Color(0xff141A2E);
  static Color yellowDark =  Color(0xffFACC1D);

  static ThemeData lightMode = ThemeData(
      canvasColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primaryLight,
          selectedItemColor: blackColor,
          showUnselectedLabels: true),
      appBarTheme:  AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme:IconThemeData(color: blackColor)
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),

      ));

  static ThemeData darkMode = ThemeData(
      canvasColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primaryDark,
          selectedItemColor: primaryLight,
          showUnselectedLabels: true),
      appBarTheme:  AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme:IconThemeData(color: WhiteColor)
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
        titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Colors.white),
        titleSmall: TextStyle(fontSize: 25, fontWeight: FontWeight.w400,color: Colors.white),

      ));

}

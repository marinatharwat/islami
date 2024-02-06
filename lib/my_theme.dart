import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = const Color(0xff242424);
  static Color primaryColor = const Color(0xffB7935F);
  static Color LightColor = const Color(0xffC9B497);
  static Color WhiteColor = const Color(0xffffffff);

  static ThemeData lightMode = ThemeData(
      canvasColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primaryColor,
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
}

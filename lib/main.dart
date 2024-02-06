import 'package:flutter/material.dart';
import 'package:islami/Home/home_screen.dart';
import 'package:islami/hadeth/hadeth_deatils_screen.dart';
import 'package:islami/my_theme.dart';

import 'quran/sura_details_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
   initialRoute:HomeScreen.routeName,
        debugShowCheckedModeBanner: false,
   routes:{
    HomeScreen.routeName:(context)=> HomeScreen(),
     SuraDetailsScreen.routeName:(context)=> SuraDetailsScreen(),
     HadethDetailsScreen.routeName:(context)=> HadethDetailsScreen(),
   },
    theme:MyTheme.lightMode,
   );
  }
}


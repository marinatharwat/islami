
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
   String  appLanguage='en';
   ThemeMode appTheme =ThemeMode.light;
   void ChangeLanguage(String newLanguage){
     if(appLanguage==newLanguage){
       return;
     }else{
       appLanguage=newLanguage;
       notifyListeners();

     }
   }

   void ChangeTheme(ThemeMode newMode){
     if(appTheme==newMode){
       return;
     }else{
       appTheme=newMode;
       notifyListeners();

     }
   }

   bool isDarkMode(){

     return appTheme==ThemeMode.dark;
   }

}
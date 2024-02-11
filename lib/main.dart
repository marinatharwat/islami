
import 'package:flutter/material.dart';
import 'package:islami/Home/home_screen.dart';
import 'package:islami/hadeth/hadeth_deatils_screen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_confing_provider.dart';
import 'package:provider/provider.dart';
import 'quran/sura_details_Screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp( ChangeNotifierProvider(create: (context)=>AppConfigProvider(),child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.darkMode,

      locale: Locale(provider.appLanguage),
      themeMode: provider.appTheme,

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

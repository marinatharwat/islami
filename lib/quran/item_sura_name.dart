import 'package:flutter/material.dart';
import 'package:islami/quran/sura_details_Screen.dart';
class ItemSuraName extends StatelessWidget {
  String name;
  int   Index;
  ItemSuraName({required this.name,required this.Index});
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
       Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
       arguments:suraDetailsArgs(name: name, index: Index)
       );
        },
        child: Text(
          textAlign:TextAlign.center,
          name,
          style:Theme.of(context).textTheme.titleMedium,

    ),
      );
  }
}

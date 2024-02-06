import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth_screen.dart';

import 'hadeth_deatils_screen.dart';
class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemHadethName({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
              arguments:hadeth,
          );
        },
        child: Text(
          textAlign:TextAlign.center,
          hadeth.title,
          style:Theme.of(context).textTheme.titleMedium,

        ),
      );
  }
}

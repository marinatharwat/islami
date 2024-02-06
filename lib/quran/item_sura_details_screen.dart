import 'package:flutter/material.dart';
class ItemSuraDetailsScreen extends StatelessWidget {
  String name;
  int   Index;
  ItemSuraDetailsScreen({required this.name,required this.Index});
  @override
  Widget build(BuildContext context) {
    return
      Text(
        textAlign:TextAlign.center,
        '$name{${Index+1}}',
        style:Theme.of(context).textTheme.titleMedium,

      );
  }
}

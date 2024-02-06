import 'package:flutter/material.dart';
class ItemHadethDetailsScreen extends StatelessWidget {
  String content;
  ItemHadethDetailsScreen({required this.content});
  @override
  Widget build(BuildContext context) {
    return
      Text(
        textAlign:TextAlign.center,

        content,
        style:Theme.of(context).textTheme.titleMedium,

      );
  }
}

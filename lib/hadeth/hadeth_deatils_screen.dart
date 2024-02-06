import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth/hadeth_screen.dart';
import 'package:islami/hadeth/item_hadeth_details_screen.dart';
import 'package:islami/my_theme.dart';


class HadethDetailsScreen extends StatefulWidget {
  static const routeName = "Hadeth_Details_Screen";

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;

    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title:
            Text(args.title, style: Theme
                .of(context)
                .textTheme
                .titleLarge),
          ),
          body:
               Container(
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.07,
              horizontal: MediaQuery
                  .of(context)
                  .size
                  .height * 0.04,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: MyTheme.WhiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ListView.separated(
              separatorBuilder: (context, Index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(
                    thickness: 2,
                    color: MyTheme.primaryColor,
                  ),
                );
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ItemHadethDetailsScreen( content: args.content[index]),
                );
              },
              itemCount: args.content.length,
            ),
          ),
        ),
      ],
    );
  }

}
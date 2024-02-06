import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';

import 'item_sura_details_screen.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const routeName = "Sura_Details_Screen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;

    if (verses.isEmpty) {
      LoadFile(args.index);
    }
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
                Text(args.name, style: Theme.of(context).textTheme.titleLarge),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: MyTheme.primaryColor,
                ))
              : Container(
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.07,
                    horizontal: MediaQuery.of(context).size.height * 0.04,
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
                      return ItemSuraDetailsScreen(
                          name: verses[index], Index: index);
                    },
                    itemCount: verses.length,
                  ),
                ),
        ),
      ],
    );
  }

  void LoadFile(index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class suraDetailsArgs {
  String name;
  int index;

  suraDetailsArgs({required this.name, required this.index});
}

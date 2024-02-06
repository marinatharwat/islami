import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth/item_hadeth_name.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/quran/item_sura_name.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
List <Hadeth> ahadethList=[];

  @override
  Widget build(BuildContext context) {

    if(ahadethList.isEmpty){
      LoadFile();

    }

    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/images/hadeth_image.png',
          ),
        ),
        Divider(
          thickness: 3,
          color: MyTheme.primaryColor,
        ),
        Text("Hadiths", style: Theme.of(context).textTheme.titleSmall),
        Divider(
          thickness: 3,
          color: MyTheme.primaryColor,
        ),
        ahadethList.isEmpty?
            Center(child: CircularProgressIndicator(color: MyTheme.primaryColor,))
        :
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,Index){
              return  Divider(
                thickness: 2,
                color: MyTheme.primaryColor,
              );
            },
            itemBuilder:(context,Index) {
              return ItemHadethName( hadeth:ahadethList[Index],);
            },
            itemCount:ahadethList.length,

          ),
        )
      ],
    );


  }

  void LoadFile() async {
    String hadethcontent = await rootBundle.loadString(
        'assets/files/ahadeth.txt');
    List<String> hadethList = hadethcontent.split('#\r\n');

    for(int i=0; i<hadethList.length; i++){
      List<String> hadethLines = hadethList[i].split('\n');
      String title =hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth  hadeth=Hadeth(title:title, content:hadethLines);
      ahadethList.add(hadeth);
      setState(() {

      });
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
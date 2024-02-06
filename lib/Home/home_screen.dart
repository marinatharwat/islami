import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth_screen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/quran/quran_screen.dart';
import 'package:islami/radio/radio_screen.dart';
import 'package:islami/sebha/sebha_screen.dart';
class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);
   static const  routeName ="HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int  selectedIndex= 0;

  @override
  Widget build(BuildContext context) {

    return  Stack(
      children: [
        Image.asset('assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
         Scaffold(
          appBar: AppBar(
           title:  Text("Islami",style:Theme.of(context).textTheme.titleLarge ,),
          ),
           bottomNavigationBar: Theme(
             data: Theme.of(context).copyWith(
               canvasColor: MyTheme.primaryColor
             ),
             child: BottomNavigationBar(
               currentIndex: selectedIndex,
               onTap: (index){
                 selectedIndex=index;
                 setState(() {

                 });
               },
               items: const [
                 BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/icon_quran.png")),label: 'quran',),
                 BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label: 'hadeth'),
                 BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/icon_sebha.png")),label: 'sebha'),
                 BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/icon_radio.png")),label: 'radio'),

               ],
             ),
           ),
           body: tabs[selectedIndex],
         )
      ],
    );
  }
  List<Widget> tabs=[
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),

    RadioScreen(),
  ];
}

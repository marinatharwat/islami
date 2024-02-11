import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          const SizedBox(height: 100,),
          Image.asset('assets/images/radio_image.png',
          ),
          const SizedBox(height: 30,),
           Center(
            child: Text(AppLocalizations.of(context)!.holy_quran_radio,
                style:Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(height: 80,),


           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Image.asset('assets/images/Icon_Previous.png'),
               Image.asset('assets/images/Icon_awesome-play.png'),
               Image.asset('assets/images/Icon-next.png'),
          ],)
        ],

    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
class SebhaScreen extends StatefulWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  _SebhaScreenState createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int counter = 0;
  bool isRotating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleRotation() {
    if (isRotating) {
      _controller.stop();
    } else {
      _controller.repeat();
    }
    setState(() {
      isRotating = !isRotating;
    });
  }

  void _increaseCounter() {
    setState(() {
      counter++;
      if (counter > 99) {
        counter = 0;
      }
      if (counter % 33 == 0) {
        _toggleRotation();
      }
    });
  }
  String getButtonText() {
    if (counter >= 0 && counter <= 32) {
      return "الحمدلله";
    } else if (counter >= 33 && counter <= 65) {
      return "الله اكبر";
    } else if (counter >= 66 && counter <= 98) {
      return "سبحان الله ";
    } else {
      return "الحمدلله";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

        children: [
          SizedBox(height: 30,),
          GestureDetector(
            onTap: () {
              _increaseCounter();
              _toggleRotation();
            },
            child:
            Stack(
              children: [
                RotationTransition(
                  turns: _controller,

                  child:
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Image.asset('assets/images/sebha.png'),
                  ),
                ),
                Positioned(
                  top: -10,
                  right:100,
                  child: Image.asset('assets/images/part_sepha.png'),
                ),
              ],
            )
          ),
          const SizedBox(height: 10,),
          Text("Number of praises", style: Theme.of(context).textTheme.titleMedium,),
          const SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: MyTheme.LightColor,
            ),
            height: 90,
            width: 80,
            child: Center(
              child: Text("$counter", style: Theme.of(context).textTheme.titleMedium),
            ),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(150, 50)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(MyTheme.primaryColor,),
            ),
            child: Text(
              getButtonText(),
                style: Theme.of(context).textTheme.titleMedium,
            ),
          )
        ],
      ),
    );
  }
}
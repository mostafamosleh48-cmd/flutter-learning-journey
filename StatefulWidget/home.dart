import 'package:flutter/material.dart'; 
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var diceImage = 'assets/dice-1.png';
  void rollDice() {
    var randomNum = Random().nextInt(6) + 1;
    setState(() {
      diceImage = 'assets/dice-$randomNum.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            diceImage,
            width: 300,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: rollDice,
            child: Text('roll Dice'),
          ),
        ],
      ),
    );
  }
}

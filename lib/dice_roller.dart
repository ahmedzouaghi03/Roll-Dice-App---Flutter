import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';
var activeDiceImage ='assets/images/dice-2.png';


class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
      setState((){
        var diceRoll = Random().nextInt(6)+1;
        activeDiceImage ='assets/images/dice-$diceRoll.png';
        print("Dice Rolled ...");
      });


  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 300,
        ),
        const SizedBox(height: 20,),
        TextButton(
            onPressed: rollDice,
            child: const Text("Roll Dice"),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28.0),
              //padding: EdgeInsets.only(top: 20),
            ))
      ],
    );
  }
}

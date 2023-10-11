import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  
  var currentDiceRoll = 2;

    void rollDice(){
      setState(() {
        currentDiceRoll = randomizer.nextInt(6) + 1;
      });
    }
  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      child: Column(
        
        children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png', 
        ),

        const Expanded(
        child: SizedBox(), // This SizedBox takes up the available space.
      ),
        
        TextButton(onPressed: rollDice,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent) 
        ),
        // TextButton.styleFrom(
        //   foregroundColor: Colors.white, 
        //   textStyle: const TextStyle(
        //     fontSize: 30,
            
        //   ),),
        child: const Text('Roll Dice', style: TextStyle(fontSize: 30, color: Colors.white),),
        
        
        )
      ]
      ),
          
    );
  }
}
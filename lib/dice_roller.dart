import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random(); // Create a Random object to generate random numbers for dice rolls

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // Generate a random number between 1 and 6 for the dice roll
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Center the column vertically
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200),
        const SizedBox(
          height: 20,
        ), // Add some spacing between the image and the button
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            // top: 20,
            // ), // Add padding to the top of the button
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
            // backgroundColor: Colors.black, // Set button background color to black
          ),
          child: Text('Roll Dice'),
        ),
      ], // Column to hold the image and text, you can add more widgets here if needed
    );
  }
}
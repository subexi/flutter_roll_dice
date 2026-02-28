import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png'; // Variable to hold the active dice image
  
  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-4.png';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Center the column vertically
      children: [
        Image.asset(
          activeDiceImage, 
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
import 'package:flutter/material.dart';
// import 'package:flutter_roll_dice/styled_text.dart'; // Import the StyledText widget

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight; 

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key}); // Constructor

  final Color color1; // Final variables to hold the colors for the gradient
  final Color color2; // Final variables to hold the colors for the gradient

  void rollDice() {
    // Function to handle dice rolling logic, you can implement this as needed
  }

  @override // Override the build method to create the UI
  Widget build(BuildContext context) {
    // Build method returns a widget tree
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Center the column vertically 
          children: [
            Image.asset(
              'assets/images/dice-2.png', 
              width: 200,
            ),
            const SizedBox(height: 20), // Add some spacing between the image and the button  
            TextButton(
              onPressed: rollDice, 
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
                // backgroundColor: Colors.black, // Set button background color to black
              ),  
              child: Text('Roll Dice')
            )
          ], // Column to hold the image and text, you can add more widgets here if needed
        ), // Display the dice image in the center
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_roll_dice/styled_text.dart'; // Import the StyledText widget

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight; 

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key}); // Constructor

  final Color color1; // Final variables to hold the colors for the gradient
  final Color color2; // Final variables to hold the colors for the gradient

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
      child: const Center(
        child: StyledText('Hello Helmut!'), // Use the StyledText widget to display text in the center
      ),
    );
  }
}

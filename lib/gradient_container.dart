import 'package:flutter/material.dart';
import 'package:flutter_roll_dice/styled_text.dart'; // Import the StyledText widget

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key}); // Constructor

  @override // Override the build method to create the UI
  Widget build(BuildContext context) {
    // Build method returns a widget tree
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(), // Use the StyledText widget to display text in the center
      ),
    );
  }
}

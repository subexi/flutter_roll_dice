import 'package:flutter/material.dart';
import 'package:flutter_roll_dice/gradient_container.dart'; // Import the GradientContainer widget

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 149),
        )
      ),
    ),
  );
}

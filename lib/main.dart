import 'package:flutter/material.dart';
import 'package:flutter_roll_dice/gradient_container.dart'; // Import the GradientContainer widget

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 54, 244, 127),
          Colors.blue,
        )
      ),
    ),
  );
}

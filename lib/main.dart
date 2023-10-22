import 'package:flutter/material.dart';
import 'package:second_flutter_app/gradient_container.dart';

int add(int num1, int num2) {
  return (num1 + num2);
}

// void = the function will not return a value
void main() {
  // const trytry = MaterialApp(home: Text('是！長官!'));
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ),
      ),
    ),
  );
  add(5, 10);
}

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
        body: GradientContainer(),
      ),
    ),
  );
  add(5, 10);
}

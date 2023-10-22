import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // passing access the variable passing to the constructor and map to the child widget variable, use this.
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28.5,
      ),
    );
  }
}

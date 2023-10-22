import 'dart:math';
import 'package:flutter/material.dart';

class RandomPhoto extends StatefulWidget {
  const RandomPhoto({super.key});

  @override
  State<RandomPhoto> createState() {
    return _RandomPhotoState();
  }
}

class _RandomPhotoState extends State<RandomPhoto> {
  int currentPhotoId = 2;

  void randomPhoto() {
    setState(() {
      currentPhotoId = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/ca$currentPhotoId.jpg',
        width: 300,
      ),
      TextButton(
        onPressed: randomPhoto,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(18),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 18),
        ),
        child: const Text('Random Photo'),
      ),
    ]);
  }
}

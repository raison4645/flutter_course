import 'package:flutter/material.dart';
import 'package:second_flutter_app/random_photo.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//Widget is the type declaration
class GradientContainer extends StatelessWidget {
  //constructor function
  const GradientContainer(this.color1, this.color2, {super.key});

  // List can still be edit in final
  final Color color1;
  final Color color2;

  @override // Annotation, not required but recommended to at this
  Widget build(context) {
    // in this build method you should return some value for flutter to re-use
    return Container(
      // the const in the constructor means the whole widget is unchangable?
      // if a const widget contains var value, it will throw error
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: RandomPhoto(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:second_flutter_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//Widget is the type declaration
class GradientContainer extends StatelessWidget {
  //constructor function
  const GradientContainer({super.key});

  @override // Annotation, not required but recommended to at this
  Widget build(context) {
    // in this build method you should return some value for flutter to re-use
    return Container(
      // the const in the constructor means the whole widget is unchangable?
      // if a const widget contains var value, it will throw error
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(58, 71, 183, 1),
            Color.fromARGB(255, 45, 7, 98)
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: StyledText('Hello Zimmermann!')),
    );
  }
}

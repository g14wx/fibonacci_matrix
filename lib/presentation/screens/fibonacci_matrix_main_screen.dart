import 'package:flutter/material.dart';

import 'fibonacci_screen.dart';

class FibonacciMatrixMainScreen extends StatelessWidget {
  const FibonacciMatrixMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait){
      return Center(
        child: ConstrainedBox(
            constraints: BoxConstraints.loose(const Size.fromWidth(600)),
            child: const FibonacciScreen()
        ),
      );
    } else {
      return const FibonacciScreen();
    }
  }
}

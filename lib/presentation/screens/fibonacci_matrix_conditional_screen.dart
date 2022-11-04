import 'package:flutter/material.dart';

// widgets
import 'fibonacci_screen.dart';

/// Conditional widget
///
/// This component is only to watch if the orientation is portrait, this will only add a Constrained box to limit
/// the max width that can reach the viewport
class FibonacciMatrixConditionalScreen extends StatelessWidget {
  const FibonacciMatrixConditionalScreen({Key? key}) : super(key: key);

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

import 'package:flutter/material.dart';

/// widgets
import 'package:fibonacci_matrix/presentation/screens/fibonacci_screen.dart';

class FibonacciMatrixPage extends StatelessWidget {
  const FibonacciMatrixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matriz de Fibonacci', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait ? Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.loose(const Size.fromWidth(600)),
            child: const FibonacciScreen()
        ),
      ) : const FibonacciScreen(),
    );
  }
}

import 'package:fibonacci_matrix/presentation/screens/fibonacci_matrix_conditional_screen.dart';
import 'package:flutter/material.dart';

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
      body: const FibonacciMatrixConditionalScreen()
    );
  }
}

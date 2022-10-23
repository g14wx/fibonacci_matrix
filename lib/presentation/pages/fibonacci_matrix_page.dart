import 'package:flutter/material.dart';

class FibonacciMatrixPage extends StatelessWidget {
  const FibonacciMatrixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matriz de Fibonacci', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Text('Fibonacci Main Page'),
      ),
    );
  }
}

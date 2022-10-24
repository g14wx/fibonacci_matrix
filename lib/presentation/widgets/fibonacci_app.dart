import 'package:fibonacci_matrix/router/router_app.dart';
import 'package:flutter/material.dart';

class FibonacciApp extends StatelessWidget {
  const FibonacciApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => RouterApp.onGenerateRoute(settings),
    );
  }
}

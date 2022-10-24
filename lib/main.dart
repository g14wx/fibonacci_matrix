import 'package:flutter/material.dart';
/// widgets
import 'package:fibonacci_matrix/presentation/widgets/fibonacci_app.dart';
/// services
import 'package:fibonacci_matrix/services/locator_service/locator_service.dart';
/// constants
import 'constants/env.dart';

void main() {
  // initializing getIt for DI
  configureDependencies(Env.staging);
  runApp(const FibonacciApp());
}

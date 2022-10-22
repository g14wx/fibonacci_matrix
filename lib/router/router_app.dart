import 'package:fibonacci_matrix/presentation/pages/fibonacci_matrix_page.dart';
import 'package:fibonacci_matrix/presentation/pages/not_found_route.dart';
import 'package:fibonacci_matrix/router/constants/app_routes.dart';
import 'package:flutter/material.dart';

class RouterApp {
  static Route onGenerateRoute(RouteSettings route) {
    switch (route.name) {
      case AppRoutes.root:
        return MaterialPageRoute(
          builder: (context) => const FibonacciMatrixPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundRoute(),
        );
    }
  }
}

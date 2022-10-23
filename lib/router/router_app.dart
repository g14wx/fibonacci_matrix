import 'package:fibonacci_matrix/business_logic/cubits/fibonacci_cubit.dart';
import 'package:fibonacci_matrix/presentation/pages/fibonacci_matrix_page.dart';
import 'package:fibonacci_matrix/presentation/pages/not_found_route.dart';
import 'package:fibonacci_matrix/router/constants/app_routes.dart';
import 'package:fibonacci_matrix/services/locator_service/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouterApp {
  static Route onGenerateRoute(RouteSettings route) {
    switch (route.name) {
      case AppRoutes.root:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (BuildContext context) => getIt<FibonacciCubit>(),
            child: const FibonacciMatrixPage(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundRoute(),
        );
    }
  }
}

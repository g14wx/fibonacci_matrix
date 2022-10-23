import 'package:bloc_test/bloc_test.dart';
import 'package:fibonacci_matrix/business_logic/cubits/fibonacci_cubit.dart';
import 'package:fibonacci_matrix/constants/env.dart';
import 'package:fibonacci_matrix/services/locator_service/locator_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  setUpAll(() {
    configureDependencies(Env.staging);
  });

  blocTest<FibonacciCubit, FibonacciState>(
    'Generate a fibonacci Matrix',
    build: () => getIt<FibonacciCubit>(),
    act: (bloc) {
      bloc.generateFibonacci(start: 1, finish: 9);
    },
    expect: () => [
      isA<GenerateFibonacci>()
    ],
  );

  blocTest<FibonacciCubit, FibonacciState>(
    'Fail to generate a non 3x3 matrix',
    build: () => getIt<FibonacciCubit>(),
    act: (bloc) {
      bloc.generateFibonacci(start: 2, finish: 9);
    },
    expect: () => [
      isA<Error>()
    ],
  );
}
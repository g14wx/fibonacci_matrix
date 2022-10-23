part of 'fibonacci_cubit.dart';

@immutable
@freezed
class FibonacciState with _$FibonacciState {
  const factory FibonacciState.initialState() = _InitialState;
  const factory FibonacciState.generateFibonacci({required List<List<int>> fibonacci, required int sum}) = _GenerateFibonacci;
  const factory FibonacciState.error({required String message, required bool update}) = _Error;
}

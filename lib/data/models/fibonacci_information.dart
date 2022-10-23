import 'package:freezed_annotation/freezed_annotation.dart';

part 'fibonacci_information.freezed.dart';

@freezed
class FibonacciInformation with _$FibonacciInformation {
  const factory FibonacciInformation({
    required int columnIndex,
    required int rowIndex
}) = _FibonacciInformation;
}

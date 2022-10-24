import 'package:fibonacci_matrix/business_logic/controllers/fibonacci_controller.dart';
import 'package:fibonacci_matrix/constants/rotation_of_top_side_of_matrix.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fibonacci Controller tests', () {

    test('Get fibonacci list sequence from index 0 to 9', () {
      /// given
      final fibonacciController = FibonacciController();
      /// when
      final fibonacciList = fibonacciController.getFibonacciSequence(0, 9);
      /// then
      expect( fibonacciList, [0,1,1,2,3,5,8,13,21]);
    });

    test('Get fibonacci list sequence from index 5 to 9', () {
      /// given
      final fibonacciController = FibonacciController();
      /// when
      final fibonacciList = fibonacciController.getFibonacciSequence(5, 9);
      /// then
      expect( fibonacciList, [5,8,13,21]);
    });

    test('Get fibonacci list sequence from index 0 to 5', () {
      /// given
      final fibonacciController = FibonacciController();
      /// when
      final fibonacciList = fibonacciController.getFibonacciSequence(0, 5);
      /// then
      expect( fibonacciList, [0,1,1,2,3]);
    });


    test('Get fibonacci matrix when top file move to left side', () {
      /// given
      final fibonacciController = FibonacciController();
      /// when
      final fibonacciList = fibonacciController.getFibonacciSequence(0, 9);
      final matrix = fibonacciController.getFibonacciMatrixSequence(fibonacciList, 3, 3, RotationOfTopSideOfMatrix.left);
      /// then
      expect( matrix[0], [8,2,0]);
      expect( matrix[1], [13,3,1]);
      expect( matrix[2], [21,5,1]);
      _printMatrix(matrix);
    });

    test('Get fibonacci matrix when top file move to bottom side', () {
      /// given
      final fibonacciController = FibonacciController();
      /// when
      final fibonacciList = fibonacciController.getFibonacciSequence(0, 9);
      final matrix = fibonacciController.getFibonacciMatrixSequence(fibonacciList, 3, 3, RotationOfTopSideOfMatrix.bottom);
      /// then
      expect( matrix[0], [21,13,8]);
      expect( matrix[1], [5,3,2]);
      expect( matrix[2], [1,1,0]);
      _printMatrix(matrix);
    });

    test('Get fibonacci matrix when top file move to right side', () {
      /// given
      final fibonacciController = FibonacciController();
      /// when
      final fibonacciList = fibonacciController.getFibonacciSequence(0, 9);
      final matrix = fibonacciController.getFibonacciMatrixSequence(fibonacciList, 3, 3, RotationOfTopSideOfMatrix.right);
      /// then
      expect( matrix[0], [1,5,21]);
      expect( matrix[1], [1,3,13]);
      expect( matrix[2], [0,2,8]);
      _printMatrix(matrix);
    });

    test('Get fibonacci matrix when top file move to top side', () {
      /// given
      final fibonacciController = FibonacciController();
      /// when
      final fibonacciList = fibonacciController.getFibonacciSequence(0, 9);
      final matrix = fibonacciController.getFibonacciMatrixSequence(fibonacciList, 3, 3, RotationOfTopSideOfMatrix.top);
      /// then
      expect( matrix[0], [0,1,1]);
      expect( matrix[1], [2,3,5]);
      expect( matrix[2], [8,13,21]);
      _printMatrix(matrix);
    });
  });
}

_printMatrix(List<List<int>> matrix){
  if (kDebugMode) {
    for (var element in matrix) {
      print(element);
    }
  }
}

import 'package:fibonacci_matrix/constants/rotation_of_top_side_of_matrix.dart';

abstract class IFibonacciController {

  List<int> getFibonacciSequence(int showFromIndex, int showToIndex);
  List<List<int>> getFibonacciMatrixSequence(List<int> fibonacciListSequence, int matrixColumns, int matrixRows, RotationOfTopSideOfMatrix side);

}
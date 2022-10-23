import 'package:fibonacci_matrix/business_logic/controllers/i_fibonacci_controller.dart';
import 'package:fibonacci_matrix/constants/rotation_of_top_side_of_matrix.dart';
import 'package:fibonacci_matrix/data/models/fibonacci_information.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IFibonacciController)
class FibonacciController implements IFibonacciController {
  @override
  List<int> getFibonacciSequence(int showFromIndex, int showToIndex) {
    final lengthOfFibonacci = showToIndex - showFromIndex;
    return List.generate(lengthOfFibonacci, (index) => _getFibonacciNumber(index + showFromIndex)).toList();
  }

  @override
  List<List<int>> getFibonacciMatrixSequence(
      List<int> fibonacciListSequence, int matrixColumns, int matrixRows, RotationOfTopSideOfMatrix side) {
    int columns = matrixColumns - 1;
    int rows = matrixRows - 1;

    final matrix = _getOriginalFibonacciMatrix(fibonacciListSequence, matrixColumns, matrixRows);

    /// creating a new Matrix with filled with zeros.
    List<List<int>> newMatrix = List.generate(
        matrixColumns,
        (index) => List.generate(
              matrixRows,
              (index) => 0,
            )).toList();

    ///these variables are needed for spot the right space in the matrix for an item
    int columnCount = 0;
    int rowCount = 0;
    for (var columnIndex = 0; columnIndex <= columns; columnIndex++) {
      for (var rowIndex = 0; rowIndex <= rows; rowIndex++) {
        FibonacciInformation information = _getFibonacciCorrectPositionOfItemInOriginalMatrix(
            currentColumn: columnCount, currentRow: rowCount, side: side, lengthRow: rows, lengthColumn: columns);
        newMatrix[columnIndex][rowIndex] = matrix[information.columnIndex][information.rowIndex];
        rowCount += 1;
      }
      columnCount += 1;
      rowCount = 0;
    }

    return newMatrix;
  }

  int _getFibonacciNumber(int numberToFibonacci) {
    if (numberToFibonacci <= 1) {
      return numberToFibonacci;
    }
    return _getFibonacciNumber(numberToFibonacci - 1) + _getFibonacciNumber(numberToFibonacci - 2);
  }

  FibonacciInformation _getFibonacciCorrectPositionOfItemInOriginalMatrix(
      {required int currentColumn,
      required int currentRow,
      required RotationOfTopSideOfMatrix side,
      required int lengthRow,
      required int lengthColumn}) {
    switch (side) {
      case RotationOfTopSideOfMatrix.left:
        int column = lengthColumn - currentRow;
        int row = currentColumn;
        return FibonacciInformation(columnIndex: column, rowIndex: row);

      case RotationOfTopSideOfMatrix.bottom:
        int column = lengthColumn - currentColumn;
        int row = lengthColumn - currentRow;
        return FibonacciInformation(columnIndex: column, rowIndex: row);

      case RotationOfTopSideOfMatrix.right:
        int column = currentRow;
        int row = lengthColumn - currentColumn;
        return FibonacciInformation(columnIndex: column, rowIndex: row);

      case RotationOfTopSideOfMatrix.top:
        int column = currentColumn;
        int row = currentRow;
        return FibonacciInformation(columnIndex: column, rowIndex: row);
    }
  }

  List<List<int>> _getOriginalFibonacciMatrix(List<int> fibonacciListSequence, int matrixColumns, int matrixRows) {
    int columns = matrixColumns - 1;
    int rows = matrixRows - 1;
    List<List<int>> matrix = List.generate(
        matrixColumns,
        (index) => List.generate(
              matrixRows,
              (index) => 0,
            )).toList();

    /// this variable is needed to just count the index of the item in the fibonacci list
    int indexList = -1;
    for (var columnIndex = 0; columnIndex <= columns; columnIndex++) {
      for (var rowIndex = 0; rowIndex <= rows; rowIndex++) {
        indexList += 1;
        matrix[columnIndex][rowIndex] = fibonacciListSequence[indexList];
      }
    }
    return matrix;
  }
}

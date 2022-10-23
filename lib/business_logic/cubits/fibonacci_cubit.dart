/// packages
import 'package:bloc/bloc.dart';
import 'package:fibonacci_matrix/constants/rotation_of_top_side_of_matrix.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
/// controllers
import 'package:fibonacci_matrix/business_logic/controllers/i_fibonacci_controller.dart';

part 'fibonacci_state.dart';
part 'fibonacci_cubit.freezed.dart';

@injectable
class FibonacciCubit extends Cubit<FibonacciState> {
  final IFibonacciController controller;
  int? _start;
  int? _finish;
  bool _updateAlert = false;
  int _rotationIndex = 1;
  FibonacciCubit(this.controller) : super(const FibonacciState.initialState());

  rotateFibonacci(){
    if (_start != null && _finish != null) {
      final fibonacciList = controller.getFibonacciSequence(_start! - 1, _finish!);
      final matrix = controller.getFibonacciMatrixSequence( fibonacciList, 3, 3, _getRightRotation(_rotationIndex));
      final sum = matrix.fold(0, (previousValue, element){
        final sumRow = element.fold(0, (previousValue, element) => previousValue + element);
        return previousValue + sumRow;
      });
      _updateRotationIndex();
      emit(FibonacciState.generateFibonacci(fibonacci: matrix, sum: sum));
    }
  }

  generateFibonacci({required int start, required int finish}){

    final numberOfItemsToShow = (finish - (start == 1 ? 0 : start));
    if ( numberOfItemsToShow.isNegative || !(numberOfItemsToShow == 9) ) {
      _updateAlert = !_updateAlert;
      emit(FibonacciState.error(message: "La cantidad de números a mostrar debe de ser una cuadrícula de 3x3 (9 elementos)", update: _updateAlert));
      return;
    }

    final fibonacciList = controller.getFibonacciSequence(start - 1, finish);
    final matrix = controller.getFibonacciMatrixSequence( fibonacciList, 3, 3, RotationOfTopSideOfMatrix.top);
    final sum = matrix.fold(0, (previousValue, element){
      final sumRow = element.fold(0, (previousValue, element) => previousValue + element);
      return previousValue + sumRow;
    });
    _start = start;
    _finish = finish;
    emit(FibonacciState.generateFibonacci(fibonacci: matrix, sum: sum));
  }

  resetFibonacci(){
    _start = null;
    _finish = null;
    _rotationIndex = 1;
    emit(const FibonacciState.initialState());
  }

  RotationOfTopSideOfMatrix _getRightRotation(int rotationIndex){
    switch(rotationIndex){
      case 0:
        return RotationOfTopSideOfMatrix.top;
      case 1:
        return RotationOfTopSideOfMatrix.left;
      case 2:
        return RotationOfTopSideOfMatrix.bottom;
      case 3:
        return RotationOfTopSideOfMatrix.right;
      default:
        return RotationOfTopSideOfMatrix.top;
    }
  }

  _updateRotationIndex(){
    if (_rotationIndex >= 3) {
      _rotationIndex = 0;
    } else {
      _rotationIndex += 1;
    }
  }
}

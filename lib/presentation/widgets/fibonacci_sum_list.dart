import 'package:fibonacci_matrix/business_logic/cubits/fibonacci_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FibonacciSumList extends StatefulWidget {
  const FibonacciSumList({Key? key}) : super(key: key);

  @override
  State<FibonacciSumList> createState() => _FibonacciSumListState();
}

class _FibonacciSumListState extends State<FibonacciSumList> {
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FibonacciCubit, FibonacciState>(
      listener: (context, state) => _listenOnFibonacciCubitForSumList(state),
      builder: (context, state) {
        return Center(child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("Suma de matriz:  $sum"),
        ));
      },
    );
  }

  /// Functions
  _listenOnFibonacciCubitForSumList(FibonacciState state) => state.mapOrNull(
      generateFibonacci: (value) {
        setState(() {
          sum = value.sum;
        });
      },
      initialState: (value) {
        setState(() {
          sum = 0;
        });
      },
    );
}

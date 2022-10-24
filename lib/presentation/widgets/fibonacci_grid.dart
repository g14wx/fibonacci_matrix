import 'package:flutter/material.dart';

class FibonacciGrid extends StatelessWidget {
  final List<List<int>> _listFibonacci;
  const FibonacciGrid({Key? key, required List<List<int>> listFibonacci})
      : _listFibonacci = listFibonacci,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: _listFibonacci
            .map((row) => Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: row
                        .map((fibonacciNumber) => Flexible(child: Center(child: Text(fibonacciNumber.toString(), style: TextStyle(fontWeight: FontWeight.bold),))))
                        .toList(),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FibonacciGrid extends StatelessWidget {
  final List<List<int>> _listFibonacci;
  FibonacciGrid({Key? key, required List<List<int>> listFibonacci})
      : _listFibonacci = listFibonacci,
        super(key: key);
  final formatValues = NumberFormat.decimalPattern('en_us');

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
                        .map((fibonacciNumber) => Flexible(
                            child: Center(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      formatValues.format(fibonacciNumber),
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )))))
                        .toList(),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

import 'package:fibonacci_matrix/constants/id_keys_for_elements.dart';
import 'package:flutter/material.dart';

class InputsForGenerateFibonacci extends StatelessWidget {
  final TextEditingController _startInput;
  final TextEditingController _finishInput;
  InputsForGenerateFibonacci(
      {Key? key, required TextEditingController startInputController, required TextEditingController finishController})
      : _startInput = startInputController,
        _finishInput = finishController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Flexible(
            flex: 6,
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Elemento inicial:",
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                      key: Key(IdKeysForElements.startIndexFibonacci.literal),
                      autovalidateMode: AutovalidateMode.always,
                      controller: _startInput,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        final isNumber = int.tryParse(value ?? "") != null;
                        if (value == null || !isNumber || int.parse(value) < 1) {
                          return "Ingrese un numero entero";
                        }
                      })
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Flexible(
            flex: 6,
            child: Center(
              child: Column(
                children: [
                  const Text("Elemento final:", textAlign: TextAlign.center),
                  TextFormField(
                      key: Key(IdKeysForElements.finishIndexFibonacci.literal),
                      autovalidateMode: AutovalidateMode.always,
                      controller: _finishInput,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        final isNumber = int.tryParse(value ?? "") != null;
                        if (value == null || !isNumber) {
                          return "Ingrese un numero entero";
                        }
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

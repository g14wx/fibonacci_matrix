import 'package:fibonacci_matrix/constants/id_keys_for_elements.dart';
import 'package:fibonacci_matrix/presentation/widgets/text_input_fibonacci.dart';
import 'package:flutter/material.dart';

class InputsForGenerateFibonacci extends StatelessWidget {
  final TextEditingController _startInput;
  final TextEditingController _finishInput;
  const InputsForGenerateFibonacci(
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
          TextInputFibonacci(
            title: "Elemento inicial:",
            inputKey: Key(IdKeysForElements.startIndexFibonacci.literal),
            inputTextEditingController: _startInput,
            validator: _validatorForFirstElementInput,
          ),
          const Spacer(
            flex: 1,
          ),
          TextInputFibonacci(
            title: "Elemento final:",
            inputKey: Key(IdKeysForElements.finishIndexFibonacci.literal),
            inputTextEditingController: _finishInput,
            validator: _validatorForSecondElementInput,
          ),
        ],
      ),
    );
  }

  String? _validatorForFirstElementInput(String? value) {
    final isNumber = int.tryParse(value ?? "") != null;
    if (value == null || !isNumber) {
      return "Ingrese un numero entero";
    } else if (int.parse(value) < 0) {
      return "Ingrese numeros positivos";
    }
    return null;
  }

  String? _validatorForSecondElementInput(String? value) {
    final isNumber = int.tryParse(value ?? "") != null;
    if (value == null || !isNumber) {
      return "Ingrese un numero entero";
    }
    if (int.parse(value) < 0) {
      return "Ingrese numeros positivos";
    } else if (int.parse(value) == 0) {
      return "Ingrese numero mayor a 0";
    }
    return null;
  }
}

import 'package:fibonacci_matrix/business_logic/cubits/fibonacci_cubit.dart';
import 'package:fibonacci_matrix/constants/id_keys_for_elements.dart';
import 'package:fibonacci_matrix/presentation/widgets/button_fibonacci.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsForFibonacci extends StatefulWidget {
  final TextEditingController _startInput;
  final TextEditingController _finishInput;
  final GlobalKey<FormState> _formKey;

  const ButtonsForFibonacci(
      {Key? key,
      required GlobalKey<FormState> formKey,
      required TextEditingController startInputController,
      required TextEditingController finishController})
      : _formKey = formKey,
        _startInput = startInputController,
        _finishInput = finishController,
        super(key: key);

  @override
  State<ButtonsForFibonacci> createState() => _ButtonsForFibonacciState();
}

class _ButtonsForFibonacciState extends State<ButtonsForFibonacci> {
  bool _disableButtons = true;
  @override
  Widget build(BuildContext context) {
    return BlocListener<FibonacciCubit, FibonacciState>(
      listener: (context, state) => _processListenerOnFibonacciCubit(state),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          ButtonFibonacci(
            keyId: Key(IdKeysForElements.buttonToGenerateGrid.literal),
            onTap: () => _generateMatrix(),
            child: const Text('Generar matriz'),
          ),
          _getDividerBetweenButtons,
          ButtonFibonacci(onTap: _canTapRotateToRight, child: const Text('Rotar a la derecha')),
          _getDividerBetweenButtons,
          ButtonFibonacci(
              keyId: Key(IdKeysForElements.buttonToClearGrid.literal),
              onTap: _canTapCleanMatrix, child: const Text('Limpiar matriz'))
        ],
      ),
    );
  }

  _showErrorSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Row(
        children: const [
          Icon(
            Icons.error,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Por favor, ingrese numeros enteros',
          )
        ],
      ),
      backgroundColor: Colors.redAccent,
    );
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// functions
  _generateMatrix() {
    if (widget._formKey.currentState != null && widget._formKey.currentState!.validate()) {
      final start = int.parse(widget._startInput.value.text);
      final finish = int.parse(widget._finishInput.value.text);
      context.read<FibonacciCubit>().generateFibonacci(start: start, finish: finish);
    } else {
      _showErrorSnackBar(context);
    }
  }

  _processListenerOnFibonacciCubit(FibonacciState state) => state.mapOrNull(
        generateFibonacci: (value) {
          setState(() {
            _disableButtons = false;
          });
        },
        initialState: (value) {
          setState(() {
            _disableButtons = true;
          });
        },
      );

  /// getters

  Function? get _canTapRotateToRight => _disableButtons ? null : () => context.read<FibonacciCubit>().rotateFibonacci();

  Function? get _canTapCleanMatrix => _disableButtons ? null : () => context.read<FibonacciCubit>().resetFibonacci();

  Widget get _getDividerBetweenButtons => const SizedBox(
        height: 10,
      );
}

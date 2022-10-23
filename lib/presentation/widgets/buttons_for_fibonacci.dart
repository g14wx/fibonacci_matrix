import 'package:fibonacci_matrix/business_logic/cubits/fibonacci_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsForFibonacci extends StatefulWidget {
  final TextEditingController _startInput;
  final TextEditingController _finishInput;
  final GlobalKey<FormState> _formKey;

  ButtonsForFibonacci(
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
      listener: (context, state) {
        state.mapOrNull(
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
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
              onPressed: () {
                if (widget._formKey.currentState != null && widget._formKey.currentState!.validate()) {
                  final start = int.parse(widget._startInput.value.text);
                  final finish = int.parse(widget._finishInput.value.text);
                  context.read<FibonacciCubit>().generateFibonacci(start: start, finish: finish);
                } else {
                  _showErrorSnackBar(context);
                }
              },
              child: Text('Generar matriz')),
          TextButton(
              onPressed: _disableButtons
                  ? null
                  : () {
                      context.read<FibonacciCubit>().rotateFibonacci();
                    },
              child: Text('Rotar a la derecha')),

          TextButton(
              onPressed: _disableButtons
                  ? null
                  : () {
                context.read<FibonacciCubit>().resetFibonacci();
              },
              child: Text('Limpiar matriz'))
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
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

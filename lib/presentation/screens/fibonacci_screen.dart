import 'package:fibonacci_matrix/business_logic/cubits/fibonacci_cubit.dart';
import 'package:fibonacci_matrix/business_logic/cubits/fibonacci_cubit.dart';
import 'package:fibonacci_matrix/presentation/widgets/buttons_for_fibonacci.dart';
import 'package:flutter/material.dart';

/// Widgets
import 'package:fibonacci_matrix/presentation/widgets/fibonacci_grid.dart';
import 'package:fibonacci_matrix/presentation/widgets/fibonacci_sum_list.dart';
import 'package:fibonacci_matrix/presentation/widgets/inputs_for_generate_fibonacci.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FibonacciScreen extends StatefulWidget {
  FibonacciScreen({Key? key}) : super(key: key);

  @override
  State<FibonacciScreen> createState() => _FibonacciScreenState();
}

class _FibonacciScreenState extends State<FibonacciScreen> {
  final startInput = TextEditingController();
  final finishInput = TextEditingController();
  List<List<int>> fibonacciMatrix = List.generate(3, (index) => List.generate(3, (index) => 0,)).toList();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<FibonacciCubit, FibonacciState>(
      listener: (context, state) {
        state.mapOrNull(
          generateFibonacci: (value) {
            setState(() {
              fibonacciMatrix = value.fibonacci;
            });
          },
          error: (value) {
            _showErrorSnackBar(context, value.message);
          },
          initialState: (value) {
            setState(() {
              fibonacciMatrix = List.generate(3, (index) => List.generate(3, (index) => 0,)).toList();
            });
          },
        );
      },
      child: CustomScrollView(
        slivers: [
          MediaQuery.of(context).orientation == Orientation.portrait ? SliverList(
              delegate: SliverChildListDelegate([
                FibonacciGrid(listFibonacci: fibonacciMatrix),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20), child: FibonacciSumList()),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputsForGenerateFibonacci(startInputController: startInput, finishController: finishInput),
                        ButtonsForFibonacci(
                            formKey: _formKey, startInputController: startInput, finishController: finishInput)
                      ],
                    )
                )
              ])
          ) : SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildListDelegate([
              FibonacciGrid(listFibonacci: fibonacciMatrix),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.symmetric(vertical: 20), child: FibonacciSumList()),
                      InputsForGenerateFibonacci(startInputController: startInput, finishController: finishInput),
                      ButtonsForFibonacci(
                          formKey: _formKey, startInputController: startInput, finishController: finishInput)
                    ],
                  )
              )
            ]),
          )
        ],
      ),
    );
  }

  _showErrorSnackBar(BuildContext context, String message){
    final snackBar = SnackBar(
      content: Row(
        children: [
          const Icon(
            Icons.error,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              message
            ),
          )
        ],
      ),
      backgroundColor: Colors.redAccent,
    );
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

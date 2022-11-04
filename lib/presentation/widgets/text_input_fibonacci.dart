import 'package:flutter/material.dart';

class TextInputFibonacci extends StatelessWidget {
  final TextEditingController inputTextEditingController;
  final Key inputKey;
  final Function(String? value) validator;
  final String title;
  const TextInputFibonacci(
      {Key? key,
      required this.inputKey,
      required this.inputTextEditingController,
      required this.validator,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      child: Center(
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
            ),
            TextFormField(
                key: inputKey,
                autovalidateMode: AutovalidateMode.always,
                controller: inputTextEditingController,
                keyboardType: TextInputType.number,
                validator: (value) => validator(value))
          ],
        ),
      ),
    );
  }
}

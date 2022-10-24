import 'package:flutter/material.dart';

class FibonacciInformationLabel extends StatelessWidget {
  const FibonacciInformationLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: 'Información: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Recuerda, que el número indicado como el punto de partida para generar la secuencia, no será tomado en cuenta '),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
                '(Por ejemplo: si indicas "1" como punto de partida, se empezara a mostrar la secuencia desde el número "2")', textAlign: TextAlign.center,),
          ],
        ),
      )),
    );
  }
}

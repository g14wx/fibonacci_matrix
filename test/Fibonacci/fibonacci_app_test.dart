import 'package:fibonacci_matrix/constants/id_keys_for_elements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fibonacci_matrix/main.dart' as app;

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();
  binding.testTextInput.register();

  group('end-to-end test', () {
    testWidgets('Generate matrix of 3x3 from 0 to 9, verify the result',
            (tester) async {
          app.main();
          await tester.pumpAndSettle();

          // Verify the counter starts at 0.
          expect(find.text('0'), findsAtLeastNWidgets(9));

          // Find first input
          final Finder firstElementInput = find.byKey(Key(IdKeysForElements.startIndexFibonacci.literal));

          // Find second input
          final Finder secondElementInput = find.byKey(Key(IdKeysForElements.finishIndexFibonacci.literal));

          // Emulate insert text on first input
          await tester.enterText(firstElementInput, '0');

          // Emulate insert text on second input
          await tester.enterText(secondElementInput, '9');

          // find button to generate matrix
          final Finder buttonToGenerateMatrix = find.byKey(Key(IdKeysForElements.buttonToGenerateGrid.literal));

          // Emulate tap "Generar matrix" button
          await tester.tap(buttonToGenerateMatrix);

          // Trigger a frame.
          await tester.pumpAndSettle();

          // Verify that the matrix has been generate correctly
          await expectLater(find.text('0'), findsNWidgets(2));
          expect(find.text('1'), findsNWidgets(2));
          expect(find.text('2'), findsOneWidget);
          expect(find.text('3'), findsOneWidget);
          expect(find.text('5'), findsOneWidget);
          expect(find.text('8'), findsOneWidget);
          expect(find.text('13'), findsOneWidget);
          expect(find.text('21'), findsOneWidget);

          // find "Limpiar matrix" button
          final buttonToClearMatrix = find.byKey(Key(IdKeysForElements.buttonToClearGrid.literal));

          // Emulate tap "Limpiar matrix" button
          await tester.tap(buttonToClearMatrix);

          // Trigger a frame.
          await tester.pumpAndSettle();

          // Verify that the grid is filled with zeros
          expect(find.text('0'), findsAtLeastNWidgets(9));
        });
  });
}
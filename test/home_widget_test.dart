import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should show informe seus dados form',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final textField = find.byKey(Key('name_field'));
    final button = find.byKey(Key('submit_button'));

    expect(textField, findsOneWidget);
    expect(button, findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('should show welcome plus name', (WidgetTester tester) async {
    const name = 'Matheus';

    await tester.pumpWidget(MaterialApp(home: DisplayScreen(text: name)));

    expect(find.text('Bem vindo $name'), findsOneWidget);
  });
}
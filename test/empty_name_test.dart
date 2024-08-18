import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
   testWidgets('should not accept empty name', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    final button = find.byKey(Key('submit_button'));

    await tester.tap(button);
    await tester.pump();

    expect(find.text('Campo obrigatório'), findsOneWidget);
  });
}
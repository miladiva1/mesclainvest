import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/main.dart'; 

void main() {
  testWidgets('Smoke test inicial - Molde Base', (WidgetTester tester) async {
    // Carrega o nosso novo app
    await tester.pumpWidget(const MaterialApp(home: TestPage()));

    // Verifica se a tela carregou o título do nosso molde
    expect(find.text('MesclaInvest - Molde Base'), findsOneWidget);
  });
}
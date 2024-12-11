import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inspection_control/controllers/db_controller.dart';
import 'package:inspection_control/main.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Navega para a tela de lista de clientes e clica em adicionar',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ClienteNotifier()),
          ChangeNotifierProvider(create: (_) => InspecaoNotifier()),
        ],
        child: const MyApp(),
      ),
    );

    await tester.tap(find.text("Clientes"));
    await tester.pumpAndSettle();
    expect(find.text("Clientes"), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();
    expect(find.text("Dados Pessoais"), findsOneWidget);
  });

  testWidgets('Navega para a tela de lista de inspeções',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ClienteNotifier()),
          ChangeNotifierProvider(create: (_) => InspecaoNotifier()),
        ],
        child: const MyApp(),
      ),
    );

    await tester.tap(find.text("Inspeções"));
    await tester.pumpAndSettle();
    expect(find.text("Inspeções"), findsOneWidget);
  });
}

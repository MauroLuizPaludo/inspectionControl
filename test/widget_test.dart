import 'package:flutter_test/flutter_test.dart';
import 'package:inspection_control/controllers/db_controller.dart';
import 'package:inspection_control/main.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Verifica se a rota inicial é HomePage',
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

    expect(find.text("Inspeções - Campos de Semente"), findsOneWidget);
  });

  testWidgets('Navega para a tela de lista de clientes',
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


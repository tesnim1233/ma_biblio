import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ma_biblio/main.dart';

void main() {
  testWidgets('HomePage displays the first three books', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Le Petit Prince'), findsOneWidget);
    expect(find.text("L'Étranger"), findsOneWidget);
    expect(find.text('Une brève histoire du temps'), findsOneWidget);
    expect(find.text('Sapiens'), findsNothing);
    expect(find.text('A. de Saint-Exupéry – 1943'), findsOneWidget);
    expect(find.byIcon(Icons.star), findsNWidgets(3));
  });

  testWidgets('settings button opens ParametresScreen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.settings));
    await tester.pumpAndSettle();

    expect(find.text('Paramètres'), findsOneWidget);
    expect(find.text('Nombre de livres'), findsOneWidget);
  });
}

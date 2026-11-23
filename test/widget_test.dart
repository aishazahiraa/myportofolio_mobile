import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/screens/menu.dart';

void main() {
  testWidgets('Homepage displays Add Education', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: MyHomePage()));

    expect(find.text('MyPortfolio'), findsOneWidget);
    expect(find.text('Add Education'), findsOneWidget);
  });
}

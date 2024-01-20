import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> main() async {
  await loadAppFonts();

  testWidgets('Golden Test', (WidgetTester tester) async {
    // Build the widget to be tested.
    final widget = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Golden Test')),
        body: const Center(child: Text('Hello, World!')),
      ),
    );

    await tester.pumpWidget(widget);

    // Take a screenshot of the widget for golden test.
    await expectLater(
      find.byType(MaterialApp),
      matchesGoldenFile('goldens/golden_test.png'),
    );
  });
}

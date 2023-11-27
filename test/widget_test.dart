
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:high_level_test/main.dart';
import 'package:high_level_test/my_app.dart';

void main() {
  testWidgets('Widget smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.byIcon(Icons.favorite));
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

  });
}

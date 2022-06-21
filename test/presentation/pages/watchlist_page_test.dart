import 'package:ditonton/presentation/pages/watchlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget _createTestableWidget(Widget body) {
    return MaterialApp(
      home: Scaffold(
        body: body,
      ),
    );
  }

  testWidgets(
    'Should showing AppBar, Padding, InkWell Widget',
    (WidgetTester tester) async {
      await tester.pumpWidget(_createTestableWidget(WatchlistPage()));
      await tester.pump();

      expect(find.byType(AppBar), findsOneWidget);
      expect(find.byType(Padding), findsWidgets);
      expect(find.byType(InkWell), findsWidgets);
    },
  );
}

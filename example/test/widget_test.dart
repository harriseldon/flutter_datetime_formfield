// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';


void main() {
  testWidgets('Test Calendar Pop-Up', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.byKey(Key("BASE")), findsOneWidget);
 
    // Tap the DateFormField and trigger a pop-up.
    await tester.press(find.byKey(Key("BASE")));
    await tester.pumpAndSettle();

  });

  testWidgets('Test Calendar with Custom InputDecoration',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    
    // Find the decorated DateFormField
    expect(find.byKey(Key("DEC")), findsOneWidget);

    // Ensure the icon is visible
    expect(find.byIcon(Icons.calendar_today), findsOneWidget);
  });
}

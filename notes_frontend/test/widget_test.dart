import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('Minimal smoke: NotesApp renders', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    // Should find some widget with "Notes" in its text (app bar etc.)
    expect(find.textContaining('Notes'), findsWidgets);
  });

  testWidgets('FAB exists in initial load', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}

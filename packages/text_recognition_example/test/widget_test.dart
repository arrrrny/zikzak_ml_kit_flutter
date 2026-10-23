// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:text_recognition_example/main.dart';

void main() {
  testWidgets('recognition screen reports a missing camera', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame. The camera plugin is unavailable in
    // the test environment, so the screen falls back to its error state.
    await tester.pumpWidget(const TextRecognitionApp());

    expect(find.text('Point & Recognize'), findsOneWidget);
    expect(find.text('No camera available'), findsOneWidget);
  });
}

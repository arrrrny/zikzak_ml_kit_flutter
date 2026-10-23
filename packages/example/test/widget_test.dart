// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:google_ml_kit_example/main.dart';

void main() {
  testWidgets('demo app renders the ML Kit feature list',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // The demo app is a list of ML Kit features, not a counter.
    expect(find.text('Google ML Kit Demo App'), findsOneWidget);
    expect(find.text('Vision APIs'), findsOneWidget);
    expect(find.text('Natural Language APIs'), findsOneWidget);
  });
}

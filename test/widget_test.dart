// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:ecommerce_portolio_app/core/theme/themes.dart';
import 'package:ecommerce_portolio_app/feature/home/view/home_view.dart';
import 'package:ecommerce_portolio_app/widget/button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ecommerce_portolio_app/main.dart';

void main() {
  testWidgets('Buton Hız Testi', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
          theme: ThemeClass.lightTheme,
          darkTheme: ThemeClass.darkTheme,
          themeMode: ThemeMode.system,
          home:const HomeView(
            homeCollectionTitle: 'Utku',
          )),
    );

    final titleFinder = find.text('Utku');

    expect(titleFinder, findsOneWidget);

    // Verify that our counter starts at 0.
    /*   expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget); */
  });
}

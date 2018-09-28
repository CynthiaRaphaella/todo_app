// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/main.dart';
import 'package:todo_app/pages/create_todo_page.dart';
import 'package:todo_app/pages/home_page.dart';

void main() {
  group(
      'MyApp',
      () => testWidgets('Main', (WidgetTester tester) async {
            // Build our app and trigger a frame.
            await tester.pumpWidget(MyApp());

            expect(find.byType(HomePage), findsOneWidget);
            expect(find.byType(CreateTodoPage), findsNothing);

            MaterialApp materialApp = tester.widget(find.byType(MaterialApp));
            expect(materialApp.title, equals('To do'));
            expect(materialApp.routes, contains(CreateTodoPage.route));
          }));
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chatify/core/widgets/app_password_field.dart';

void main() {
  Widget createWidget() {
    return const MaterialApp(
      home: Scaffold(
        body: AppPasswordField(label: "Password", hint: "Enter password"),
      ),
    );
  }

  group("App Password Field Tests", () {
    testWidgets("should hide password initially", (tester) async {
      await tester.pumpWidget(createWidget());

      final editableText = tester.widget<EditableText>(
        find.byType(EditableText),
      );

      expect(editableText.obscureText, true);
    });

    testWidgets("should display password label", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Password"), findsOneWidget);
    });

    testWidgets("should display password hint", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Enter password"), findsOneWidget);
    });

    testWidgets("should show visibility off icon initially", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.byIcon(Icons.visibility_off_outlined), findsOneWidget);
    });

    testWidgets("should toggle password visibility", (tester) async {
      await tester.pumpWidget(createWidget());

      await tester.tap(find.byIcon(Icons.visibility_off_outlined));

      await tester.pump();

      final editableText = tester.widget<EditableText>(
        find.byType(EditableText),
      );

      expect(editableText.obscureText, false);

      expect(find.byIcon(Icons.visibility_outlined), findsOneWidget);
    });

    testWidgets("should hide password again after second tap", (tester) async {
      await tester.pumpWidget(createWidget());

      await tester.tap(find.byIcon(Icons.visibility_off_outlined));

      await tester.pump();

      await tester.tap(find.byIcon(Icons.visibility_outlined));

      await tester.pump();

      final editableText = tester.widget<EditableText>(
        find.byType(EditableText),
      );

      expect(editableText.obscureText, true);
    });
  });
}

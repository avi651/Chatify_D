import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chatify/core/widgets/app_button.dart';
import 'package:chatify/core/widgets/progressive_dots.dart';

void main() {
  group("App Button Tests", () {
    testWidgets("should display button title", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppButton(title: "Login", onPressed: () {}),
          ),
        ),
      );

      expect(find.text("Login"), findsOneWidget);
    });

    testWidgets("should call callback when pressed", (tester) async {
      bool clicked = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppButton(
              title: "Login",

              onPressed: () {
                clicked = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text("Login"));

      expect(clicked, true);
    });

    testWidgets("should show loading state", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppButton(title: "Login", isLoading: true, onPressed: () {}),
          ),
        ),
      );

      // Button text should not appear

      expect(find.text("Login"), findsNothing);

      // Loader should appear

      expect(find.byType(ProgressiveDots), findsOneWidget);
    });
  });
}

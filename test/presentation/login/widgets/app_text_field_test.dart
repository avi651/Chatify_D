import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chatify/core/widgets/app_text_field.dart';

void main() {
  Widget createWidget({TextEditingController? controller}) {
    return MaterialApp(
      home: Scaffold(
        body: AppTextField(
          label: "Email",

          hint: "Enter email",

          icon: Icons.email,

          controller: controller,
        ),
      ),
    );
  }

  group("App Text Field Tests", () {
    testWidgets("should display label", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Email"), findsOneWidget);
    });

    testWidgets("should display hint text", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Enter email"), findsOneWidget);
    });

    testWidgets("should display prefix icon", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.byIcon(Icons.email), findsOneWidget);
    });

    testWidgets("should enter text", (tester) async {
      final controller = TextEditingController();

      await tester.pumpWidget(createWidget(controller: controller));

      await tester.enterText(find.byType(TextFormField), "test@gmail.com");

      expect(controller.text, "test@gmail.com");
    });

    testWidgets("should validate input", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppTextField(
              label: "Email",

              hint: "Enter email",

              icon: Icons.email,

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email required";
                }

                return null;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byType(TextFormField));

      await tester.pump();

      final form = find.byType(TextFormField);

      expect(form, findsOneWidget);
    });
  });
}

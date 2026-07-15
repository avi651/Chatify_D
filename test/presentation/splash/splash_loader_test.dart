import 'package:chatify/presentation/splash/widgets/splash_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ProgressiveDots Widget Tests", () {
    testWidgets("should display progressive dots loader", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: ProgressiveDots())),
      );

      expect(find.byKey(const Key("progressive_dots")), findsOneWidget);
    });

    testWidgets("should display three dots", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: ProgressiveDots())),
      );

      expect(find.byKey(const Key("dot_0")), findsOneWidget);

      expect(find.byKey(const Key("dot_1")), findsOneWidget);

      expect(find.byKey(const Key("dot_2")), findsOneWidget);
    });

    testWidgets("should support custom dot size", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: ProgressiveDots(size: 20))),
      );

      final size = tester.getSize(find.byKey(const Key("dot_0")));

      expect(size.width, 20);

      expect(size.height, 20);
    });

    testWidgets("should support dark theme", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),

          home: const Scaffold(body: ProgressiveDots()),
        ),
      );

      expect(find.byKey(const Key("progressive_dots")), findsOneWidget);
    });

    testWidgets("should support light theme", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),

          home: const Scaffold(body: ProgressiveDots()),
        ),
      );

      expect(find.byKey(const Key("progressive_dots")), findsOneWidget);
    });

    testWidgets("should animate dots", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: ProgressiveDots())),
      );

      await tester.pump(const Duration(milliseconds: 500));

      expect(find.byKey(const Key("progressive_dots")), findsOneWidget);
    });
  });
}

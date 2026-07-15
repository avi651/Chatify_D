import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chatify/presentation/splash/widgets/splash_logo.dart';

void main() {
  group("Splash Logo Widget Tests", () {
    testWidgets("should display chat icon", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: SplashLogo())),
      );

      expect(find.byIcon(Icons.chat), findsOneWidget);
    });

    testWidgets("should render in dark theme", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),

          home: const Scaffold(body: SplashLogo()),
        ),
      );

      expect(find.byType(SplashLogo), findsOneWidget);
    });
  });
}

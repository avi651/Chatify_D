import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chatify/presentation/splash/widgets/splash_title.dart';

void main() {
  group("Splash Title Widget Tests", () {
    testWidgets("should display app name", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: SplashTitle())),
      );

      expect(find.text("Chatify"), findsOneWidget);
    });

    testWidgets("should display subtitle", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: SplashTitle())),
      );

      expect(find.text("Connect • Chat • Share"), findsOneWidget);
    });
  });
}

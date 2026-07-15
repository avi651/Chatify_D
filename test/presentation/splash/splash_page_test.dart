import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chatify/presentation/splash/splash_page.dart';

void main() {
  group("Splash Page Tests", () {
    testWidgets("should display splash screen", (tester) async {
      await tester.pumpWidget(const MaterialApp(home: SplashPage()));

      expect(find.byType(SplashPage), findsOneWidget);
    });
  });
}

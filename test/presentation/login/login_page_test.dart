import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc/login_validation_bloc.dart';
import 'package:chatify/presentation/login/login_page.dart';

void main() {
  Widget createWidget() {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => LoginValidationBloc(),

        child: const LoginPage(),
      ),
    );
  }

  group("Login Page Widget Tests", () {
    testWidgets("should display login logo", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.byIcon(Icons.chat), findsOneWidget);
    });

    testWidgets("should display welcome text", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Welcome Back"), findsOneWidget);
    });

    testWidgets("should display email field", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Email"), findsOneWidget);

      expect(find.byType(TextFormField), findsNWidgets(2));
    });

    testWidgets("should display password field", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Password"), findsOneWidget);

      expect(find.byKey(const Key("password_field")), findsOneWidget);
    });

    testWidgets("should display login button", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Login"), findsOneWidget);
    });

    testWidgets("should display forgot password", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Forgot Password?"), findsOneWidget);
    });

    testWidgets("should display signup text", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Sign Up"), findsOneWidget);
    });
  });
}

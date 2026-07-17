import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc.dart';
import 'package:chatify/presentation/login/widgets/login_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget createWidget() {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => LoginValidationBloc(),

        child: const Scaffold(body: LoginForm()),
      ),
    );
  }

  group("Login Form Widget Tests", () {
    testWidgets("should display email field", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Email"), findsOneWidget);
    });

    testWidgets("should display password field", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Password"), findsOneWidget);

      expect(find.byKey(const Key("password_field")), findsOneWidget);
    });

    testWidgets("should enter email text", (tester) async {
      await tester.pumpWidget(createWidget());

      await tester.enterText(
        find.byType(TextFormField).first,

        "test@gmail.com",
      );

      await tester.pump();

      expect(find.text("test@gmail.com"), findsOneWidget);
    });

    testWidgets("should enter password text", (tester) async {
      await tester.pumpWidget(createWidget());

      await tester.enterText(
        find.byKey(const Key("password_field")),

        "Password123",
      );

      await tester.pump();

      expect(find.text("Password123"), findsOneWidget);
    });

    testWidgets("should show email validation error", (tester) async {
      await tester.pumpWidget(createWidget());

      await tester.enterText(find.byType(TextFormField).first, "abc");

      await tester.pump();

      expect(find.text("Enter a valid email"), findsOneWidget);
    });

    testWidgets("should show password validation error", (tester) async {
      await tester.pumpWidget(createWidget());

      await tester.enterText(find.byKey(const Key("password_field")), "123");

      await tester.pump();

      expect(
        find.text("Password must be at least 8 characters"),

        findsOneWidget,
      );
    });
  });
}

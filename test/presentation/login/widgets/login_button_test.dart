import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_state.dart';
import 'package:chatify/presentation/login/widgets/login_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget createWidget({LoginValidationState? state}) {
    return MaterialApp(
      home: BlocProvider<LoginValidationBloc>(
        create: (_) => LoginValidationBloc(),

        child: const Scaffold(body: LoginButton()),
      ),
    );
  }

  group("Login Button Widget Tests", () {
    testWidgets("should display login button", (tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text("Login"), findsOneWidget);
    });

    testWidgets("should disable button initially", (tester) async {
      await tester.pumpWidget(createWidget());

      final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));

      expect(button.onPressed, isNull);
    });

    testWidgets("should enable button when form is valid", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: LoginValidationBloc()
              ..emit(
                const LoginValidationState(
                  email: "test@gmail.com",

                  password: "Password123",

                  isValid: true,
                ),
              ),

            child: const Scaffold(body: LoginButton()),
          ),
        ),
      );

      await tester.pump();

      final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));

      expect(button.onPressed, isNotNull);
    });
  });
}

import 'package:bloc_test/bloc_test.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc/login_validation_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc/login_validation_event.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc/login_validation_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late LoginValidationBloc bloc;
  setUp(() {
    bloc = LoginValidationBloc();
  });

  tearDown(() {
    bloc.close();
  });

  group("LoginValidationBloc Tests", () {
    test("initial state should be empty", () {
      expect(bloc.state, const LoginValidationState());
    });

    blocTest<LoginValidationBloc, LoginValidationState>(
      "should show email error when email is invalid",
      build: () => LoginValidationBloc(),
      act: (bloc) => bloc.add(const EmailChanged("abc")),
      expect: () => [
        const LoginValidationState(
          email: "abc",
          emailError: "Enter a valid email",
          isValid: false,
        ),
      ],
    );

    blocTest<LoginValidationBloc, LoginValidationState>(
      "should accept valid email",
      build: () => LoginValidationBloc(),
      act: (bloc) => bloc.add(const EmailChanged("test@gmail.com")),
      expect: () => [
        const LoginValidationState(
          email: "test@gmail.com",
          emailError: null,
          isValid: true,
        ),
      ],
    );

    blocTest<LoginValidationBloc, LoginValidationState>(
      "should show password error when password invalid",

      build: () => LoginValidationBloc(),

      act: (bloc) => bloc.add(const PasswordChanged("123")),

      expect: () => [
        const LoginValidationState(
          password: "123",
          passwordError: "Password must be at least 8 characters",
          isValid: false,
        ),
      ],
    );

    blocTest<LoginValidationBloc, LoginValidationState>(
      "should accept valid password",
      build: () => LoginValidationBloc(),
      act: (bloc) => bloc.add(const PasswordChanged("Password123")),
      expect: () => [
        const LoginValidationState(
          password: "Password123",
          passwordError: null,
          isValid: true,
        ),
      ],
    );

    blocTest<LoginValidationBloc, LoginValidationState>(
      "should make form valid when email and password are valid",
      build: () => LoginValidationBloc(),
      act: (bloc) {
        bloc.add(const EmailChanged("test@gmail.com"));
        bloc.add(const PasswordChanged("Password123"));
      },

      expect: () => [
        const LoginValidationState(email: "test@gmail.com", isValid: true),
        const LoginValidationState(
          email: "test@gmail.com",
          password: "Password123",
          isValid: true,
        ),
      ],
    );
  });
}

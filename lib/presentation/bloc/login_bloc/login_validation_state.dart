import 'package:equatable/equatable.dart';

class LoginValidationState extends Equatable {
  const LoginValidationState({
    this.email = '',

    this.password = '',

    this.emailError,

    this.passwordError,

    this.isValid = false,
  });

  final String email;

  final String password;

  final String? emailError;

  final String? passwordError;

  final bool isValid;

  LoginValidationState copyWith({
    String? email,

    String? password,

    String? emailError,

    String? passwordError,

    bool? isValid,
  }) {
    return LoginValidationState(
      email: email ?? this.email,

      password: password ?? this.password,

      emailError: emailError,

      passwordError: passwordError,

      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props => [
    email,

    password,

    emailError,

    passwordError,

    isValid,
  ];
}

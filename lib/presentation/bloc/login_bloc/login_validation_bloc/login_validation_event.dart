import 'package:equatable/equatable.dart';

abstract class LoginValidationEvent extends Equatable {
  const LoginValidationEvent();

  @override
  List<Object?> get props => [];
}

class EmailChanged extends LoginValidationEvent {
  const EmailChanged(this.email);

  final String email;

  @override
  List<Object?> get props => [email];
}

class PasswordChanged extends LoginValidationEvent {
  const PasswordChanged(this.password);

  final String password;

  @override
  List<Object?> get props => [password];
}

class ValidateLogin extends LoginValidationEvent {
  const ValidateLogin();
}

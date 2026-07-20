import 'package:chatify/core/services/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/validators/email_validator.dart';
import '../../../../../core/validators/password_validator.dart';
import 'login_validation_event.dart';
import 'login_validation_state.dart';

class LoginValidationBloc
    extends Bloc<LoginValidationEvent, LoginValidationState> {
  LoginValidationBloc() : super(const LoginValidationState()) {
    on<EmailChanged>(_onEmailChanged);

    on<PasswordChanged>(_onPasswordChanged);

    on<ValidateLogin>(_onValidateLogin);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginValidationState> emit) {
    final result = EmailValidator.validate(event.email);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            email: event.email,

            emailError: failure.maybeWhen(
              validation: (message, field) => message,

              orElse: () => null,
            ),

            isValid: false,
          ),
        );
      },

      (email) {
        emit(
          state.copyWith(
            email: email,

            emailError: null,

            isValid: true && state.passwordError == null,
          ),
        );
      },
    );
  }

  void _onPasswordChanged(
    PasswordChanged event,

    Emitter<LoginValidationState> emit,
  ) {
    final result = PasswordValidator.validate(event.password);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            password: event.password,

            passwordError: failure.maybeWhen(
              validation: (message, field) => message,

              orElse: () => null,
            ),

            isValid: false,
          ),
        );
      },

      (password) {
        emit(
          state.copyWith(
            password: password,

            passwordError: null,

            isValid: state.emailError == null,
          ),
        );
      },
    );
  }

  void _onValidateLogin(
    ValidateLogin event,

    Emitter<LoginValidationState> emit,
  ) {
    final emailResult = EmailValidator.validate(state.email);

    final passwordResult = PasswordValidator.validate(state.password);

    String? emailError;

    String? passwordError;

    emailResult.fold((failure) {
      emailError = failure.maybeWhen(
        validation: (message, field) => message,

        orElse: () => null,
      );
    }, (_) {});

    passwordResult.fold((failure) {
      passwordError = failure.maybeWhen(
        validation: (message, field) => message,

        orElse: () => null,
      );
    }, (_) {});

    emit(
      state.copyWith(
        emailError: emailError,

        passwordError: passwordError,

        isValid: emailError == null && passwordError == null,
      ),
    );
  }
}

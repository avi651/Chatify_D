import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chatify/core/storage/secure_storage.dart';
import 'package:chatify/domain/usecases/login_usecase.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.loginUseCase, this.secureStorage)
    : super(LoginState.initial()) {
    on<LoginSubmitted>(_onLogin);
  }

  final LoginUseCase loginUseCase;

  final SecureStorage secureStorage;

  Future<void> _onLogin(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final result = await loginUseCase(
      email: event.email,

      password: event.password,
    );

    if (emit.isDone) return;

    await result.fold<Future<void>>(
      (failure) async {
        emit(
          state.copyWith(isLoading: false, errorMessage: failure.toString()),
        );
      },

      (response) async {
        // Save JWT Token

        await secureStorage.saveAccessToken(response.accessToken);

        if (emit.isDone) return;

        emit(
          state.copyWith(
            isLoading: false,

            loginData: response,

            isSuccess: true,
          ),
        );
      },
    );
  }
}

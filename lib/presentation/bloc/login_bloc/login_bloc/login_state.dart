import 'package:chatify/domain/entities/login_response_entity/login_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    LoginResponseEntity? loginData,

    @Default(false) bool isLoading,

    String? errorMessage,

    @Default(false) bool isSuccess,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState();
}

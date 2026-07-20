import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_entity.freezed.dart';
part 'login_response_entity.g.dart';

@freezed
abstract class LoginResponseEntity with _$LoginResponseEntity {
  const LoginResponseEntity._();

  const factory LoginResponseEntity({
    @JsonKey(name: 'access_token') required String accessToken,

    @JsonKey(name: 'token_type') required String tokenType,
  }) = _LoginResponseEntity;

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseEntityFromJson(json);
}

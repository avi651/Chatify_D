import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/domain/entities/login_response_entity/login_response_entity.dart';

abstract interface class IChatifyRepositories {
  RepoEitherResponse<LoginResponseEntity> login({
    required String email,
    required String password,
  });
}

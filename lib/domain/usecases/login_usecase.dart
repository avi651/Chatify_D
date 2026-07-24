import 'package:chatify/core/services/typedef.dart';

import 'package:chatify/domain/entities/login_response_entity/login_response_entity.dart';

import 'package:chatify/domain/i_chatify_repositories/i_chatify_repositories.dart';

class LoginUseCase {
  final IChatifyRepositories repository;

  LoginUseCase(this.repository);

  RepoEitherResponse<LoginResponseEntity> call({
    required String email,

    required String password,
  }) {
    return repository.login(email: email, password: password);
  }
}

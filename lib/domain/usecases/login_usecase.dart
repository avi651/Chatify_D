import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/domain/i_chatify_repositories/i_chatify_repositories.dart';

import '../entities/login_response_entity/login_response_entity.dart';

class LoginUseCase {
  LoginUseCase(this.repository);
  final IChatifyRepositories repository;
  RepoEitherResponse<LoginResponseEntity> call({
    required String email,
    required String password,
  }) {
    return repository.login(email: email, password: password);
  }
}

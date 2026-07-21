import 'package:chatify/domain/i_chat_repository/i_chat_repository.dart';

class ConnectSocketUseCase {
  final IChatRepository repository;

  ConnectSocketUseCase(this.repository);

  Future<void> call() {
    return repository.connect();
  }
}

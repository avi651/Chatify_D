import 'package:chatify/domain/i_chat_repository/i_chat_repository.dart';

class DisconnectSocketUseCase {
  final IChatRepository repository;

  DisconnectSocketUseCase(this.repository);

  Future<void> call() {
    return repository.disconnect();
  }
}

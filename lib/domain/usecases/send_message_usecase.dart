import 'package:chatify/domain/i_chat_repository/i_chat_repository.dart';

class SendMessageUseCase {
  final IChatRepository repository;

  SendMessageUseCase(this.repository);

  Future<void> call(String message) {
    return repository.send(message);
  }
}

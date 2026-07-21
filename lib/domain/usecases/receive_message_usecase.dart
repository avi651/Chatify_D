import 'package:chatify/domain/i_chat_repository/i_chat_repository.dart';

class ReceiveMessageUseCase {
  final IChatRepository repository;

  ReceiveMessageUseCase(this.repository);

  Stream<String> call() {
    return repository.receive();
  }
}

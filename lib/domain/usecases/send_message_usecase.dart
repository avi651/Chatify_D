import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/domain/i_message_repository/i_message_repository.dart';

class SendMessageUseCase {
  final IMessageRepository repository;

  SendMessageUseCase(this.repository);

  RepoEitherResponse<void> call({
    required int conversationId,
    required String message,
  }) {
    return repository.sendMessage(
      conversationId: conversationId,
      message: message,
    );
  }
}

import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/domain/entities/message_response_entity/message_response_entity.dart';
import 'package:chatify/domain/i_message_repository/i_message_repository.dart';

class GetMessagesUseCase {
  final IMessageRepository repository;

  GetMessagesUseCase(this.repository);

  RepoEitherResponse<MessageResponseEntity> call({
    required int conversationId,
    int limit = 20,
    int? beforeId,
  }) {
    return repository.getMessages(
      conversationId: conversationId,
      limit: limit,
      beforeId: beforeId,
    );
  }
}

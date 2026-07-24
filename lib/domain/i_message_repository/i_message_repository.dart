import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/domain/entities/message_response_entity/message_response_entity.dart';

abstract interface class IMessageRepository {
  RepoEitherResponse<MessageResponseEntity> getMessages({
    required int conversationId,

    int limit = 20,

    int? beforeId,
  });

  RepoEitherResponse<void> sendMessage({
    required int conversationId,

    required String message,
  });
}

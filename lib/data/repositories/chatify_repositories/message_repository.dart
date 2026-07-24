import 'package:chatify/core/services/typedef.dart';

import 'package:chatify/data/datasource/message_remote_datasource.dart';
import 'package:chatify/domain/entities/message_entity/message_entity.dart';

import 'package:chatify/domain/entities/message_response_entity/message_response_entity.dart';

import 'package:chatify/domain/i_message_repository/i_message_repository.dart';

import 'package:dartz/dartz.dart';

class MessageRepository implements IMessageRepository {
  final MessageRemoteDataSource datasource;

  MessageRepository({required this.datasource});

  @override
  RepoEitherResponse<MessageResponseEntity> getMessages({
    required int conversationId,
    int limit = 20,
    int? beforeId,
  }) async {
    final result = await datasource.getMessages(
      conversationId: conversationId,
      limit: limit,
      beforeId: beforeId,
    );

    return result.fold((failure) => left(failure), (response) {
      final data = response.data as Map<String, dynamic>;

      final messages = (data["messages"] as List)
          .map((json) => MessageEntity.fromJson(json))
          .toList();

      return right(
        MessageResponseEntity(messages: messages, hasMore: data["has_more"]),
      );
    });
  }

  @override
  RepoEitherResponse<void> sendMessage({
    required int conversationId,
    required String message,
  }) async {
    final result = await datasource.sendMessage(
      conversationId: conversationId,
      message: message,
    );

    return result.fold((failure) => left(failure), (_) => right(null));
  }
}

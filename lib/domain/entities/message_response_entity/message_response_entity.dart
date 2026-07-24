import '../message_entity/message_entity.dart';

class MessageResponseEntity {
  final List<MessageEntity> messages;

  final bool hasMore;

  MessageResponseEntity({required this.messages, required this.hasMore});
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_detail_event.freezed.dart';

@freezed
sealed class ChatDetailEvent with _$ChatDetailEvent {
  // Load current user id from JWT token
  const factory ChatDetailEvent.loadCurrentUser() = LoadCurrentUser;

  // Load old messages from API
  const factory ChatDetailEvent.loadMessages({required int conversationId}) =
      LoadMessages;

  // Send new message
  const factory ChatDetailEvent.sendMessage({
    required int conversationId,
    required String message,
  }) = SendMessage;

  // Receive socket message
  const factory ChatDetailEvent.messageReceived({
    required Map<String, dynamic> data,
  }) = MessageReceived;
}

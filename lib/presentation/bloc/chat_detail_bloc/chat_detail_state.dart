import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chatify/domain/entities/message_entity/message_entity.dart';

part 'chat_detail_state.freezed.dart';

@freezed
abstract class ChatDetailState with _$ChatDetailState {
  const factory ChatDetailState({
    @Default([]) List<MessageEntity> messages,

    @Default(false) bool isLoading,

    String? errorMessage,

    int? currentUserId,
  }) = _ChatDetailState;

  factory ChatDetailState.initial() => const ChatDetailState();
}

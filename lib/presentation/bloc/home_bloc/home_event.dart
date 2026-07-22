import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadConversations() = LoadConversations;

  const factory HomeEvent.connectSocket() = ConnectSocket;

  const factory HomeEvent.conversationsReceived(List<dynamic> data) =
      ConversationsReceived;

  const factory HomeEvent.messageReceived(Map<String, dynamic> data) =
      MessageReceived;
}

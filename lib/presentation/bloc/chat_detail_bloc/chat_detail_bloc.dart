import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chatify/core/socket/socket_service.dart';
import 'package:chatify/core/storage/secure_storage.dart';

import 'package:chatify/domain/entities/message_entity/message_entity.dart';

import 'package:chatify/domain/usecases/get_messages_usecase.dart';
import 'package:chatify/domain/usecases/send_message_usecase.dart';

import 'chat_detail_event.dart';
import 'chat_detail_state.dart';

class ChatDetailBloc extends Bloc<ChatDetailEvent, ChatDetailState> {
  ChatDetailBloc(
    this.getMessagesUseCase,
    this.sendMessageUseCase,
    this.secureStorage,
    this.socketService,
  ) : super(ChatDetailState.initial()) {
    on<LoadCurrentUser>(_loadCurrentUser);

    on<LoadMessages>(_loadMessages);

    on<SendMessage>(_sendMessage);

    on<MessageReceived>(_messageReceived);

    _listenSocket();
  }

  final GetMessagesUseCase getMessagesUseCase;

  final SendMessageUseCase sendMessageUseCase;

  final SecureStorage secureStorage;

  final SocketService socketService;

  StreamSubscription? subscription;

  // ==================================
  // LOAD CURRENT USER FROM JWT
  // ==================================

  Future<void> _loadCurrentUser(
    LoadCurrentUser event,
    Emitter<ChatDetailState> emit,
  ) async {
    final userId = await secureStorage.getUserIdFromToken();

    print("CURRENT USER ID =====> $userId");

    emit(state.copyWith(currentUserId: userId));
  }

  // ==================================
  // LOAD OLD MESSAGES
  // ==================================

  Future<void> _loadMessages(
    LoadMessages event,
    Emitter<ChatDetailState> emit,
  ) async {
    print("LOAD MESSAGE CALLED =====> ${event.conversationId}");

    emit(state.copyWith(isLoading: true));

    final result = await getMessagesUseCase(
      conversationId: event.conversationId,
    );

    result.fold(
      (failure) {
        print("MESSAGE ERROR =====> $failure");

        emit(
          state.copyWith(isLoading: false, errorMessage: failure.toString()),
        );
      },

      (response) {
        print("MESSAGE COUNT =====> ${response.messages.length}");

        emit(state.copyWith(isLoading: false, messages: response.messages));
      },
    );
  }
  // ==================================
  // SEND MESSAGE
  // ==================================

  Future<void> _sendMessage(
    SendMessage event,
    Emitter<ChatDetailState> emit,
  ) async {
    final result = await sendMessageUseCase(
      conversationId: event.conversationId,

      message: event.message,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(errorMessage: failure.toString()));
      },

      (_) {
        print("MESSAGE SENT SUCCESSFULLY");
      },
    );
  }

  // ==================================
  // SOCKET LISTENER
  // ==================================

  void _listenSocket() {
    subscription = socketService.receive().listen((message) {
      print("========================");

      print("CHAT DETAIL SOCKET");

      print(message);

      print("========================");

      final data = jsonDecode(message);

      if (data["type"] == "message") {
        add(ChatDetailEvent.messageReceived(data: data));
      }
    });
  }

  // ==================================
  // RECEIVE MESSAGE
  // ==================================

  void _messageReceived(MessageReceived event, Emitter<ChatDetailState> emit) {
    final messageData = event.data["data"];

    final message = MessageEntity.fromJson(messageData);

    final updatedMessages = [...state.messages, message];

    emit(state.copyWith(messages: updatedMessages));
  }

  @override
  Future<void> close() async {
    await subscription?.cancel();

    return super.close();
  }
}

import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chatify/core/socket/socket_service.dart';
import 'package:chatify/domain/entities/conversation_entity/conversation_entity.dart';
import 'package:chatify/domain/usecases/get_conversations_usecase.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.getConversationsUseCase, this.socketService)
    : super(HomeState.initial()) {
    on<LoadConversations>(_loadConversations);

    on<ConnectSocket>(_connectSocket);

    on<ConversationsReceived>(_onConversationsReceived);

    on<MessageReceived>(_onMessageReceived);
  }

  final GetConversationsUseCase getConversationsUseCase;

  final SocketService socketService;

  StreamSubscription? subscription;

  // ==============================
  // REST API
  // ==============================

  Future<void> _loadConversations(
    LoadConversations event,
    Emitter<HomeState> emit,
  ) async {
    print("LOAD CONVERSATIONS CALLED");

    final result = await getConversationsUseCase();

    result.fold(
      (failure) {
        print("API FAILURE =====> $failure");

        emit(state.copyWith(errorMessage: failure.toString()));
      },

      (conversations) {
        print("CONVERSATIONS =====> ${conversations.length}");

        emit(state.copyWith(conversations: conversations));
      },
    );
  }

  // ==============================
  // SOCKET
  // ==============================

  Future<void> _connectSocket(
    ConnectSocket event,
    Emitter<HomeState> emit,
  ) async {
    await socketService.connect();

    subscription = socketService.receive().listen((message) {
      print("========================");
      print("RAW SOCKET MESSAGE");
      print(message);
      print("========================");

      final data = jsonDecode(message);

      if (data["type"] == "message") {
        print("NEW MESSAGE RECEIVED");

        add(HomeEvent.messageReceived(data["data"]));
      }
    });

    emit(state.copyWith(isConnected: true));
  }

  // ==============================
  // SOCKET CONVERSATION UPDATE
  // ==============================

  void _onConversationsReceived(
    ConversationsReceived event,
    Emitter<HomeState> emit,
  ) {
    final conversations = event.data
        .map((json) => ConversationEntity.fromJson(json))
        .toList();

    emit(state.copyWith(conversations: conversations));
  }

  void _onMessageReceived(MessageReceived event, Emitter<HomeState> emit) {
    print("🔥 HOME BLOC MESSAGE RECEIVED =====> ${event.data}");

    final message = event.data;

    final updated = state.conversations.map((conversation) {
      print(
        "CHECK ID ===== ${conversation.id} == ${message["conversation_id"]}",
      );

      if (conversation.id == message["conversation_id"]) {
        print("🔥 CONVERSATION UPDATED");

        return conversation.copyWith(lastMessage: message["message"]);
      }

      return conversation;
    }).toList();

    print("UPDATED LIST =====> $updated");

    emit(state.copyWith(conversations: updated));
  }

  @override
  Future<void> close() async {
    await subscription?.cancel();

    await socketService.disconnect();

    return super.close();
  }
}

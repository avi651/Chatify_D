import 'dart:async';

import 'package:chatify/domain/usecases/connect_socket_usecase.dart';
import 'package:chatify/domain/usecases/disconnect_socket_usecase.dart';
import 'package:chatify/domain/usecases/receive_message_usecase.dart';
import 'package:chatify/domain/usecases/send_message_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({
    required ConnectSocketUseCase connectSocketUseCase,
    required DisconnectSocketUseCase disconnectSocketUseCase,
    required SendMessageUseCase sendMessageUseCase,
    required ReceiveMessageUseCase receiveMessageUseCase,
  }) : _connect = connectSocketUseCase,
       _disconnect = disconnectSocketUseCase,
       _send = sendMessageUseCase,
       _receive = receiveMessageUseCase,
       super(const ChatState());

  final ConnectSocketUseCase _connect;
  final DisconnectSocketUseCase _disconnect;
  final SendMessageUseCase _send;
  final ReceiveMessageUseCase _receive;

  StreamSubscription<String>? _subscription;

  Future<void> connect() async {
    emit(state.copyWith(status: ChatStatus.connecting));

    try {
      await _connect();

      _subscription = _receive().listen((message) {
        final updatedMessages = List<String>.from(state.messages)..add(message);

        emit(
          state.copyWith(
            status: ChatStatus.connected,
            messages: updatedMessages,
          ),
        );
      });

      emit(state.copyWith(status: ChatStatus.connected));
    } catch (e) {
      emit(state.copyWith(status: ChatStatus.error, error: e.toString()));
    }
  }

  Future<void> sendMessage(String message) async {
    await _send(message);
  }

  Future<void> disconnect() async {
    await _subscription?.cancel();
    await _disconnect();

    emit(state.copyWith(status: ChatStatus.disconnected));
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}

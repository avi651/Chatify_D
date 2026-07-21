import 'package:chatify/core/socket/socket_service.dart';

import 'chat_socket_datasource.dart';

class ChatSocketDataSourceImpl implements ChatSocketDataSource {
  final SocketService socketService;

  ChatSocketDataSourceImpl({required this.socketService});

  @override
  Future<void> connect() {
    return socketService.connect();
  }

  @override
  Future<void> disconnect() {
    return socketService.disconnect();
  }

  @override
  Stream<String> receive() {
    return socketService.receive();
  }

  @override
  Future<void> send(String message) {
    return socketService.send(message);
  }
}

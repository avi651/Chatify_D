import 'package:chatify/core/config/env.dart';
import 'package:chatify/core/socket/socket_service.dart';
import 'package:chatify/core/storage/secure_storage.dart';

import 'package:web_socket_channel/web_socket_channel.dart';

class SocketServiceImpl implements SocketService {
  SocketServiceImpl(this.secureStorage);

  final SecureStorage secureStorage;

  WebSocketChannel? _channel;

  Stream<String>? _stream;

  @override
  bool get isConnected => _channel != null;

  @override
  Future<void> connect() async {
    if (_channel != null) {
      return;
    }

    final token = await secureStorage.getAccessToken();

    if (token == null || token.isEmpty) {
      throw Exception("Access token not found");
    }

    final uri = Uri.parse("${Env.websocketUrl}?token=$token");

    print("WS URL => $uri");

    _channel = WebSocketChannel.connect(uri);

    _stream = _channel!.stream.cast<String>().asBroadcastStream();
  }

  @override
  Stream<String> receive() {
    if (_stream == null) {
      throw Exception("Socket is not connected");
    }

    return _stream!;
  }

  @override
  Future<void> disconnect() async {
    await _channel?.sink.close();

    _channel = null;

    _stream = null;
  }

  @override
  Future<void> send(String message) async {
    if (_channel == null) {
      throw Exception("Socket is not connected");
    }

    _channel!.sink.add(message);
  }
}

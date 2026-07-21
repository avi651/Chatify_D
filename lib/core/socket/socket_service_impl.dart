import 'package:chatify/core/config/env.dart';
import 'package:chatify/core/socket/socket_service.dart';
import 'package:chatify/core/storage/secure_storage.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketServiceImpl implements SocketService {
  WebSocketChannel? _channel;

  @override
  bool get isConnected => _channel != null;

  @override
  Future<void> connect() async {
    if (_channel != null) return;

    final token = await SecureStorage.getAccessToken();

    if (token == null || token.isEmpty) {
      throw Exception("Access token not found.");
    }

    final uri = Uri.parse("${Env.websocketUrl}?token=$token");

    print("WS URL => $uri");

    _channel = WebSocketChannel.connect(uri);
  }

  @override
  Future<void> disconnect() async {
    await _channel?.sink.close();
    _channel = null;
  }

  @override
  Future<void> send(String message) async {
    if (_channel == null) {
      throw Exception("Socket is not connected.");
    }

    _channel!.sink.add(message);
  }

  @override
  Stream<String> receive() {
    if (_channel == null) {
      throw Exception("Socket is not connected.");
    }

    return _channel!.stream.cast<String>();
  }
}

abstract interface class SocketService {
  bool get isConnected;

  Future<void> connect();

  Future<void> disconnect();

  Future<void> send(String message);

  Stream<String> receive();
}

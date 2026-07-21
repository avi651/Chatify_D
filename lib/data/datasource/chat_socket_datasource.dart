abstract interface class ChatSocketDataSource {
  Future<void> connect();

  Future<void> disconnect();

  Future<void> send(String message);

  Stream<String> receive();
}

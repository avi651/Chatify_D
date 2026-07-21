abstract interface class IChatRepository {
  Future<void> connect();

  Future<void> disconnect();

  Future<void> send(String message);

  Stream<String> receive();
}

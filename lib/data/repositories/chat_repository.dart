import 'package:chatify/data/datasource/chat_socket_datasource.dart';
import 'package:chatify/domain/i_chat_repository/i_chat_repository.dart';

class ChatRepository implements IChatRepository {
  final ChatSocketDataSource _dataSource;

  ChatRepository({required ChatSocketDataSource dataSource})
    : _dataSource = dataSource;

  @override
  Future<void> connect() {
    return _dataSource.connect();
  }

  @override
  Future<void> disconnect() {
    return _dataSource.disconnect();
  }

  @override
  Future<void> send(String message) {
    return _dataSource.send(message);
  }

  @override
  Stream<String> receive() {
    return _dataSource.receive();
  }
}

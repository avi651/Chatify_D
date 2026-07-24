import 'package:chatify/core/network/base_datasource.dart';
import 'package:chatify/core/services/typedef.dart';

import 'message_remote_datasource.dart';

class MessageRemoteDataSourceImpl implements MessageRemoteDataSource {
  final BaseDatasource client;

  MessageRemoteDataSourceImpl({required this.client});

  @override
  RepoEitherResponse<dynamic> getMessages({
    required int conversationId,
    int limit = 20,
    int? beforeId,
  }) {
    return client.get(
      "/messages/conversation/$conversationId",

      queryParameters: {"limit": limit, "before_id": ?beforeId},
    );
  }

  @override
  RepoEitherResponse<dynamic> sendMessage({
    required int conversationId,
    required String message,
  }) {
    return client.post(
      "/messages",

      data: {
        "conversation_id": conversationId,

        "message": message,

        "message_type": "text",
      },
    );
  }
}

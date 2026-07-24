import 'package:chatify/core/services/typedef.dart';

abstract interface class MessageRemoteDataSource {
  RepoEitherResponse<dynamic> getMessages({
    required int conversationId,
    int limit = 20,
    int? beforeId,
  });

  RepoEitherResponse<dynamic> sendMessage({
    required int conversationId,
    required String message,
  });
}

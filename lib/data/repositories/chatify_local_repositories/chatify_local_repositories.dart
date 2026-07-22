import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/data/repositories/chatify_mock_data/converstion_mock_data.dart';
import 'package:chatify/data/repositories/chatify_mock_data/login_mock_data.dart';
import 'package:chatify/domain/entities/conversation_entity/conversation_entity.dart';
import 'package:chatify/domain/entities/login_response_entity/login_response_entity.dart';
import 'package:chatify/domain/i_chatify_repositories/i_chatify_repositories.dart';
import 'package:dartz/dartz.dart';

class ChatifyLocalRepositories implements IChatifyRepositories {
  const ChatifyLocalRepositories();
  @override
  RepoEitherResponse<LoginResponseEntity> login({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return right(LoginResponseEntity.fromJson(LoginMockData.data));
  }

  @override
  RepoEitherResponse<List<ConversationEntity>> getConversations() async {
    await Future.delayed(const Duration(seconds: 2));
    return right(
      ConverstionMockData.data
          .map((e) => ConversationEntity.fromJson(e))
          .toList(),
    );
  }
}

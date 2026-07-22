import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/domain/entities/conversation_entity/conversation_entity.dart';
import 'package:chatify/domain/entities/login_response_entity/login_response_entity.dart';

abstract interface class IChatifyRepositories {
  RepoEitherResponse<LoginResponseEntity> login({
    required String email,
    required String password,
  });

  RepoEitherResponse<List<ConversationEntity>> getConversations();
}

import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/domain/entities/conversation_entity/conversation_entity.dart';
import 'package:chatify/domain/i_chatify_repositories/i_chatify_repositories.dart';

class GetConversationsUseCase {
  final IChatifyRepositories repository;

  GetConversationsUseCase(this.repository);

  RepoEitherResponse<List<ConversationEntity>> call() {
    return repository.getConversations();
  }
}

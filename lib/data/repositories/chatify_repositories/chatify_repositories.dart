import 'package:chatify/core/network/base_datasource.dart';
import 'package:chatify/core/network_info/network_info.dart';
import 'package:chatify/domain/entities/conversation_entity/conversation_entity.dart';
import 'package:chatify/domain/i_chatify_repositories/i_chatify_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:chatify/core/services/failure.dart';
import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/domain/entities/login_response_entity/login_response_entity.dart';

class ChatifyRepositories implements IChatifyRepositories {
  final BaseDatasource client;
  final NetworkInfo networkInfo;

  ChatifyRepositories({required this.client, required this.networkInfo});

  @override
  RepoEitherResponse<LoginResponseEntity> login({
    required String email,

    required String password,
  }) async {
    if (await networkInfo.isConnected) {
      final result = await client.post(
        "/auth/login",

        authenticate: false,

        data: {"email": email, "password": password},
      );

      return result.fold((failure) => left(failure), (response) {
        final data = response.data;

        if (data == null) {
          return left(Failure.unknown("Response is null"));
        }

        try {
          final loginResponse = LoginResponseEntity.fromJson(data);

          return right(loginResponse);
        } catch (e) {
          return left(Failure.serializationFailure(e));
        }
      });
    } else {
      return left(const Failure.noInternetConnection());
    }
  }

  @override
  RepoEitherResponse<List<ConversationEntity>> getConversations() async {
    final result = await client.get("/conversations");

    return result.fold((failure) => left(failure), (response) {
      final data = response.data as List;

      final conversations = data
          .map((json) => ConversationEntity.fromJson(json))
          .toList();

      return right(conversations);
    });
  }
}

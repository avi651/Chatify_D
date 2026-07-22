import 'package:chatify/core/network/api_client.dart';
import 'package:chatify/core/network/base_datasource.dart';
import 'package:chatify/core/network/dio_client.dart';
import 'package:chatify/core/network_info/network_info.dart';

import 'package:chatify/core/socket/socket_service.dart';
import 'package:chatify/core/socket/socket_service_impl.dart';

import 'package:chatify/core/theme/bloc/theme_bloc.dart';

import 'package:chatify/data/datasource/chat_socket_datasource.dart';
import 'package:chatify/data/datasource/chat_socket_datasource_impl.dart';

import 'package:chatify/data/repositories/chat_repository.dart';
import 'package:chatify/data/repositories/chatify_repositories/chatify_repositories.dart';

import 'package:chatify/domain/i_chat_repository/i_chat_repository.dart';
import 'package:chatify/domain/i_chatify_repositories/i_chatify_repositories.dart';

import 'package:chatify/domain/usecases/connect_socket_usecase.dart';
import 'package:chatify/domain/usecases/disconnect_socket_usecase.dart';
import 'package:chatify/domain/usecases/get_conversations_usecase.dart';
import 'package:chatify/domain/usecases/login_usecase.dart';
import 'package:chatify/domain/usecases/receive_message_usecase.dart';
import 'package:chatify/domain/usecases/send_message_usecase.dart';

import 'package:chatify/presentation/bloc/chat_cubit/chat_cubit.dart';
import 'package:chatify/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_bloc/login_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc/login_validation_bloc.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDI() {
  // ==============================
  // External Dependencies
  // ==============================

  getIt.registerLazySingleton<Dio>(() => DioClient().dio);

  // ==============================
  // Core
  // ==============================

  getIt.registerLazySingleton<ThemeBloc>(() => ThemeBloc());

  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  getIt.registerLazySingleton<BaseDatasource>(
    () => ApiClient(dio: getIt<Dio>()),
  );

  // ==============================
  // Repository
  // ==============================

  getIt.registerLazySingleton<IChatifyRepositories>(
    () => ChatifyRepositories(
      client: getIt<BaseDatasource>(),
      networkInfo: getIt<NetworkInfo>(),
    ),
  );

  // ==============================
  // Auth UseCase
  // ==============================

  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt<IChatifyRepositories>()),
  );

  // Conversation API UseCase

  getIt.registerLazySingleton<GetConversationsUseCase>(
    () => GetConversationsUseCase(getIt<IChatifyRepositories>()),
  );

  // ==============================
  // Login Bloc
  // ==============================

  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt<LoginUseCase>()));

  getIt.registerFactory<LoginValidationBloc>(() => LoginValidationBloc());

  // ==============================
  // Socket
  // ==============================

  getIt.registerLazySingleton<SocketService>(() => SocketServiceImpl());

  getIt.registerLazySingleton<ChatSocketDataSource>(
    () => ChatSocketDataSourceImpl(socketService: getIt<SocketService>()),
  );

  // ==============================
  // Chat Repository
  // ==============================

  getIt.registerLazySingleton<IChatRepository>(
    () => ChatRepository(dataSource: getIt<ChatSocketDataSource>()),
  );

  // ==============================
  // Chat UseCases
  // ==============================

  getIt.registerFactory<ConnectSocketUseCase>(
    () => ConnectSocketUseCase(getIt<IChatRepository>()),
  );

  getIt.registerFactory<DisconnectSocketUseCase>(
    () => DisconnectSocketUseCase(getIt<IChatRepository>()),
  );

  getIt.registerFactory<SendMessageUseCase>(
    () => SendMessageUseCase(getIt<IChatRepository>()),
  );

  getIt.registerFactory<ReceiveMessageUseCase>(
    () => ReceiveMessageUseCase(getIt<IChatRepository>()),
  );

  // ==============================
  // Chat Cubit
  // ==============================

  getIt.registerFactory<ChatCubit>(
    () => ChatCubit(
      connectSocketUseCase: getIt<ConnectSocketUseCase>(),

      disconnectSocketUseCase: getIt<DisconnectSocketUseCase>(),

      sendMessageUseCase: getIt<SendMessageUseCase>(),

      receiveMessageUseCase: getIt<ReceiveMessageUseCase>(),
    ),
  );

  // ==============================
  // Home Bloc
  // Conversation List
  // ==============================

  getIt.registerFactory<HomeBloc>(
    () => HomeBloc(getIt<GetConversationsUseCase>(), getIt<SocketService>()),
  );
}

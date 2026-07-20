import 'package:chatify/core/network/api_client.dart';
import 'package:chatify/core/network/base_datasource.dart';
import 'package:chatify/core/network/dio_client.dart';
import 'package:chatify/core/network_info/network_info.dart';
import 'package:chatify/core/theme/bloc/theme_bloc.dart';

import 'package:chatify/data/repositories/chatify_repositories/chatify_repositories.dart';

import 'package:chatify/domain/i_chatify_repositories/i_chatify_repositories.dart';
import 'package:chatify/domain/usecases/login_usecase.dart';

import 'package:chatify/presentation/bloc/login_bloc/login_bloc/login_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc/login_validation_bloc.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDI() {
  // Dio
  getIt.registerLazySingleton<Dio>(() => DioClient().dio);

  // Theme
  getIt.registerLazySingleton<ThemeBloc>(() => ThemeBloc());

  // Network Info
  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  // Datasource
  getIt.registerLazySingleton<BaseDatasource>(
    () => ApiClient(dio: getIt<Dio>()),
  );

  // Repository
  getIt.registerLazySingleton<IChatifyRepositories>(
    () => ChatifyRepositories(
      client: getIt<BaseDatasource>(),
      networkInfo: getIt<NetworkInfo>(),
    ),
  );

  // UseCase
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt<IChatifyRepositories>()),
  );

  // Bloc
  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt<LoginUseCase>()));

  getIt.registerFactory<LoginValidationBloc>(() => LoginValidationBloc());
}

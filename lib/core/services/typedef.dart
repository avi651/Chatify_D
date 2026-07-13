import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'failure.dart';

typedef FutureApiResponse<T> = Future<ApiResponse<T>>;
typedef ApiResponse<T> = Either<Failure, Response<T>>;
typedef RepoEitherResponse<T> = Future<Either<Failure, T>>;
typedef RepoOptionResponse = Future<Option<Failure>>;
typedef Json = Map<String, dynamic>;
typedef JsonList = List<Map<String, dynamic>>;
typedef StateListener<T> = void Function(T, T);
typedef Passthrough<T> = T Function(T);
T passthrough<T>(T t) => t;

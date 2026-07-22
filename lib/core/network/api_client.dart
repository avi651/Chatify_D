import 'dart:io';

import 'package:chatify/core/network/base_datasource.dart';
import 'package:chatify/core/services/failure.dart';
import 'package:chatify/core/services/typedef.dart';
import 'package:chatify/core/storage/secure_storage.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiClient extends BaseDatasource {
  ApiClient({required this.dio});

  final Dio dio;

  @override
  Dio get client => dio;

  Future<Json> _getHeaders(Json headers, bool authenticate) async {
    final requestHeaders = {"Content-Type": "application/json", ...headers};

    if (authenticate) {
      final token = await SecureStorage.getAccessToken();

      if (token != null && token.isNotEmpty) {
        requestHeaders["Authorization"] = "Bearer $token";
      }
    }

    print("REQUEST HEADERS =====> $requestHeaders");

    return requestHeaders;
  }

  @override
  Future<Either<Failure, Response<T>>> get<T>(
    String path, {

    Json headers = const {},

    bool authenticate = true,

    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final requestHeaders = await _getHeaders(headers, authenticate);

      final response = await dio.get<T>(
        path,

        options: Options(headers: requestHeaders),

        queryParameters: queryParameters,
      );

      return right(response);
    } on DioException catch (e) {
      return left(_handleError(e));
    } catch (e) {
      return left(Failure.unknown(e));
    }
  }

  @override
  Future<Either<Failure, Response<T>>> post<T>(
    String path, {

    Json headers = const {},

    bool authenticate = true,

    Map<String, dynamic>? queryParameters,

    Object? data,
  }) async {
    try {
      final requestHeaders = await _getHeaders(headers, authenticate);

      final response = await dio.post<T>(
        path,

        data: data,

        options: Options(headers: requestHeaders),

        queryParameters: queryParameters,
      );

      return right(response);
    } on DioException catch (e) {
      return left(_handleError(e));
    } catch (e) {
      return left(Failure.unknown(e));
    }
  }

  @override
  Future<Either<Failure, Response<T>>> put<T>(
    String path, {

    Json headers = const {},

    bool authenticate = true,

    Object? data,
  }) async {
    try {
      final requestHeaders = await _getHeaders(headers, authenticate);

      final response = await dio.put<T>(
        path,

        data: data,

        options: Options(headers: requestHeaders),
      );

      return right(response);
    } on DioException catch (e) {
      return left(_handleError(e));
    } catch (e) {
      return left(Failure.unknown(e));
    }
  }

  @override
  Future<Either<Failure, Response<T>>> delete<T>(
    String path, {

    Json headers = const {},

    bool authenticate = true,

    Object? data,
  }) async {
    try {
      final requestHeaders = await _getHeaders(headers, authenticate);

      final response = await dio.delete<T>(
        path,

        data: data,

        options: Options(headers: requestHeaders),
      );

      return right(response);
    } on DioException catch (e) {
      return left(_handleError(e));
    } catch (e) {
      return left(Failure.unknown(e));
    }
  }

  Failure _handleError(DioException e) {
    if (e.response?.statusCode == HttpStatus.notFound) {
      return Failure.routeNotFound(exception: e);
    }

    return handleDioException(e);
  }
}

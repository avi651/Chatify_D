import 'dart:io';

import 'package:chatify/core/services/failure.dart';
import 'package:chatify/core/services/typedef.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class BaseDatasource {
  Dio get client;

  Future<Either<Failure, Response<T>>> get<T>(
    String path, {

    Json headers = const {},

    bool authenticate = true,

    Map<String, dynamic>? queryParameters,
  });

  Future<Either<Failure, Response<T>>> post<T>(
    String path, {

    Json headers = const {},

    bool authenticate = true,

    Map<String, dynamic>? queryParameters,

    Object? data,
  });

  Future<Either<Failure, Response<T>>> put<T>(
    String path, {

    Json headers = const {},

    bool authenticate = true,

    Object? data,
  });

  Future<Either<Failure, Response<T>>> delete<T>(
    String path, {

    Json headers = const {},

    bool authenticate = true,

    Object? data,
  });

  Failure handleDioException(DioException e) {
    logDioException(e);

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return Failure.timeout(e);

      case DioExceptionType.connectionError:
        return Failure.noInternetConnection(e);

      case DioExceptionType.unknown:
        if (e.error is SocketException) {
          return Failure.noInternetConnection(e);
        }

        break;

      default:
        break;
    }

    final statusCode = e.response?.statusCode;

    switch (statusCode) {
      case HttpStatus.unauthorized:
        return Failure.unaunthenticated(message: e.message, exception: e);

      case HttpStatus.notFound:
        return Failure.routeNotFound(message: "Route not found", exception: e);

      case HttpStatus.badRequest:
        return Failure.unknown(e.response?.data);

      case HttpStatus.internalServerError:
        return Failure.unknown("Server error");
    }

    return Failure.unknown(e);
  }

  void logDioException(DioException e) {
    final buffer = StringBuffer();

    buffer.writeln("========== Dio Exception ==========");

    buffer.writeln("URL: ${e.requestOptions.uri}");

    buffer.writeln("Method: ${e.requestOptions.method}");

    buffer.writeln("Status Code: ${e.response?.statusCode}");

    buffer.writeln("Headers: ${e.requestOptions.headers}");

    if (e.requestOptions.data != null) {
      buffer.writeln("Request Data: ${e.requestOptions.data}");
    }

    if (e.response != null) {
      buffer.writeln("Response: ${e.response?.data}");
    }

    buffer.writeln("Message: ${e.message}");

    buffer.writeln("===================================");
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.multi({
    required List<Failure> failures,
    dynamic error,
  }) = MultiFailure;

  const factory Failure.multiProxy({
    required Failure noProxyFailure,
    required Failure proxyFailure,
    dynamic error,
  }) = MultiProxyFailure;

  const factory Failure.unknown([dynamic error]) = UnknownFailure;

  const factory Failure.noInternetConnection([dynamic error]) =
      NoInternetConnectionFailure;

  const factory Failure.timeout([dynamic error]) = TimeoutFailure;

  const factory Failure.serializationFailure([dynamic error]) =
      SerializationFailure;

  const factory Failure.canceled([dynamic error]) = CanceledFailure;

  const factory Failure.unauthenticated({String? message, Object? exception}) =
      UnauthenticatedFailure;

  const factory Failure.routeNotFound({String? message, Object? exception}) =
      RouteNotFoundFailure;
}

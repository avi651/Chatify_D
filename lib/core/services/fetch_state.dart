import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
part 'fetch_state.freezed.dart';

typedef SimpleFetchState<T> = FetchState<T, void, void, dynamic>;

typedef UnitFetchState<E> = FetchState<Unit, void, void, E>;

typedef HydratedFetchState<T> = FetchState<T, void, T, dynamic>;

enum FetchStateType { inital, busy, success, error }

@freezed
sealed class FetchState<T, Tini, Tbsy, Terr>
    with _$FetchState<T, Tini, Tbsy, Terr> {
  const FetchState._();

  factory FetchState.initial({Tini? data}) = FetchStateInitial;
  factory FetchState.busy({Tbsy? data}) = FetchStateBusy;
  factory FetchState.success({required T data}) = FetchStateSuccess;
  factory FetchState.error({Terr? data}) = FetchStateError;

  bool get isInitial => this is FetchStateInitial;
  bool get isBusy => this is FetchStateBusy;
  bool get isSuccess => this is FetchStateSuccess;
  bool get isError => this is FetchStateError;

  FetchState<T, Tini, Tbsy, Terr> toInitial({Tini? data}) =>
      FetchStateInitial(data: data);

  FetchState<T, Tini, Tbsy, Terr> toBusy({Tbsy? data}) =>
      FetchStateBusy(data: data);
  FetchState<T, Tini, Tbsy, Terr> toSuccess({required T data}) =>
      FetchStateSuccess(data: data);

  FetchState<T, Tini, Tbsy, Terr> toError({Terr? data}) =>
      FetchStateError(data: data);

  FetchStateType get type {
    if (isInitial) {
      return FetchStateType.inital;
    }

    if (isBusy) {
      return FetchStateType.busy;
    }

    if (isSuccess) {
      return FetchStateType.success;
    }
    return FetchStateType.error;
  }
}

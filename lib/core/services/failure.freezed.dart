// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure()';
}


}

/// @nodoc
class $FailureCopyWith<$Res>  {
$FailureCopyWith(Failure _, $Res Function(Failure) __);
}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MultiFailure value)?  multi,TResult Function( MultiProxyFailure value)?  multiProxy,TResult Function( UnknownFailure value)?  unknown,TResult Function( NoInternetConnectionFailure value)?  noInternetConnection,TResult Function( TimeoutFailure value)?  timeout,TResult Function( SerializationFailure value)?  serializationFailure,TResult Function( CanceledFailure value)?  canceled,TResult Function( UnauthenticatedFailure value)?  unauthenticated,TResult Function( RouteNotFoundFailure value)?  routeNotFound,TResult Function( ValidationFailure value)?  validation,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MultiFailure() when multi != null:
return multi(_that);case MultiProxyFailure() when multiProxy != null:
return multiProxy(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case NoInternetConnectionFailure() when noInternetConnection != null:
return noInternetConnection(_that);case TimeoutFailure() when timeout != null:
return timeout(_that);case SerializationFailure() when serializationFailure != null:
return serializationFailure(_that);case CanceledFailure() when canceled != null:
return canceled(_that);case UnauthenticatedFailure() when unauthenticated != null:
return unauthenticated(_that);case RouteNotFoundFailure() when routeNotFound != null:
return routeNotFound(_that);case ValidationFailure() when validation != null:
return validation(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MultiFailure value)  multi,required TResult Function( MultiProxyFailure value)  multiProxy,required TResult Function( UnknownFailure value)  unknown,required TResult Function( NoInternetConnectionFailure value)  noInternetConnection,required TResult Function( TimeoutFailure value)  timeout,required TResult Function( SerializationFailure value)  serializationFailure,required TResult Function( CanceledFailure value)  canceled,required TResult Function( UnauthenticatedFailure value)  unauthenticated,required TResult Function( RouteNotFoundFailure value)  routeNotFound,required TResult Function( ValidationFailure value)  validation,}){
final _that = this;
switch (_that) {
case MultiFailure():
return multi(_that);case MultiProxyFailure():
return multiProxy(_that);case UnknownFailure():
return unknown(_that);case NoInternetConnectionFailure():
return noInternetConnection(_that);case TimeoutFailure():
return timeout(_that);case SerializationFailure():
return serializationFailure(_that);case CanceledFailure():
return canceled(_that);case UnauthenticatedFailure():
return unauthenticated(_that);case RouteNotFoundFailure():
return routeNotFound(_that);case ValidationFailure():
return validation(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MultiFailure value)?  multi,TResult? Function( MultiProxyFailure value)?  multiProxy,TResult? Function( UnknownFailure value)?  unknown,TResult? Function( NoInternetConnectionFailure value)?  noInternetConnection,TResult? Function( TimeoutFailure value)?  timeout,TResult? Function( SerializationFailure value)?  serializationFailure,TResult? Function( CanceledFailure value)?  canceled,TResult? Function( UnauthenticatedFailure value)?  unauthenticated,TResult? Function( RouteNotFoundFailure value)?  routeNotFound,TResult? Function( ValidationFailure value)?  validation,}){
final _that = this;
switch (_that) {
case MultiFailure() when multi != null:
return multi(_that);case MultiProxyFailure() when multiProxy != null:
return multiProxy(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case NoInternetConnectionFailure() when noInternetConnection != null:
return noInternetConnection(_that);case TimeoutFailure() when timeout != null:
return timeout(_that);case SerializationFailure() when serializationFailure != null:
return serializationFailure(_that);case CanceledFailure() when canceled != null:
return canceled(_that);case UnauthenticatedFailure() when unauthenticated != null:
return unauthenticated(_that);case RouteNotFoundFailure() when routeNotFound != null:
return routeNotFound(_that);case ValidationFailure() when validation != null:
return validation(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<Failure> failures,  dynamic error)?  multi,TResult Function( Failure noProxyFailure,  Failure proxyFailure,  dynamic error)?  multiProxy,TResult Function( dynamic error)?  unknown,TResult Function( dynamic error)?  noInternetConnection,TResult Function( dynamic error)?  timeout,TResult Function( dynamic error)?  serializationFailure,TResult Function( dynamic error)?  canceled,TResult Function( String? message,  Object? exception)?  unauthenticated,TResult Function( String? message,  Object? exception)?  routeNotFound,TResult Function( String message,  String? field)?  validation,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MultiFailure() when multi != null:
return multi(_that.failures,_that.error);case MultiProxyFailure() when multiProxy != null:
return multiProxy(_that.noProxyFailure,_that.proxyFailure,_that.error);case UnknownFailure() when unknown != null:
return unknown(_that.error);case NoInternetConnectionFailure() when noInternetConnection != null:
return noInternetConnection(_that.error);case TimeoutFailure() when timeout != null:
return timeout(_that.error);case SerializationFailure() when serializationFailure != null:
return serializationFailure(_that.error);case CanceledFailure() when canceled != null:
return canceled(_that.error);case UnauthenticatedFailure() when unauthenticated != null:
return unauthenticated(_that.message,_that.exception);case RouteNotFoundFailure() when routeNotFound != null:
return routeNotFound(_that.message,_that.exception);case ValidationFailure() when validation != null:
return validation(_that.message,_that.field);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<Failure> failures,  dynamic error)  multi,required TResult Function( Failure noProxyFailure,  Failure proxyFailure,  dynamic error)  multiProxy,required TResult Function( dynamic error)  unknown,required TResult Function( dynamic error)  noInternetConnection,required TResult Function( dynamic error)  timeout,required TResult Function( dynamic error)  serializationFailure,required TResult Function( dynamic error)  canceled,required TResult Function( String? message,  Object? exception)  unauthenticated,required TResult Function( String? message,  Object? exception)  routeNotFound,required TResult Function( String message,  String? field)  validation,}) {final _that = this;
switch (_that) {
case MultiFailure():
return multi(_that.failures,_that.error);case MultiProxyFailure():
return multiProxy(_that.noProxyFailure,_that.proxyFailure,_that.error);case UnknownFailure():
return unknown(_that.error);case NoInternetConnectionFailure():
return noInternetConnection(_that.error);case TimeoutFailure():
return timeout(_that.error);case SerializationFailure():
return serializationFailure(_that.error);case CanceledFailure():
return canceled(_that.error);case UnauthenticatedFailure():
return unauthenticated(_that.message,_that.exception);case RouteNotFoundFailure():
return routeNotFound(_that.message,_that.exception);case ValidationFailure():
return validation(_that.message,_that.field);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<Failure> failures,  dynamic error)?  multi,TResult? Function( Failure noProxyFailure,  Failure proxyFailure,  dynamic error)?  multiProxy,TResult? Function( dynamic error)?  unknown,TResult? Function( dynamic error)?  noInternetConnection,TResult? Function( dynamic error)?  timeout,TResult? Function( dynamic error)?  serializationFailure,TResult? Function( dynamic error)?  canceled,TResult? Function( String? message,  Object? exception)?  unauthenticated,TResult? Function( String? message,  Object? exception)?  routeNotFound,TResult? Function( String message,  String? field)?  validation,}) {final _that = this;
switch (_that) {
case MultiFailure() when multi != null:
return multi(_that.failures,_that.error);case MultiProxyFailure() when multiProxy != null:
return multiProxy(_that.noProxyFailure,_that.proxyFailure,_that.error);case UnknownFailure() when unknown != null:
return unknown(_that.error);case NoInternetConnectionFailure() when noInternetConnection != null:
return noInternetConnection(_that.error);case TimeoutFailure() when timeout != null:
return timeout(_that.error);case SerializationFailure() when serializationFailure != null:
return serializationFailure(_that.error);case CanceledFailure() when canceled != null:
return canceled(_that.error);case UnauthenticatedFailure() when unauthenticated != null:
return unauthenticated(_that.message,_that.exception);case RouteNotFoundFailure() when routeNotFound != null:
return routeNotFound(_that.message,_that.exception);case ValidationFailure() when validation != null:
return validation(_that.message,_that.field);case _:
  return null;

}
}

}

/// @nodoc


class MultiFailure extends Failure {
  const MultiFailure({required final  List<Failure> failures, this.error}): _failures = failures,super._();
  

 final  List<Failure> _failures;
 List<Failure> get failures {
  if (_failures is EqualUnmodifiableListView) return _failures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_failures);
}

 final  dynamic error;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultiFailureCopyWith<MultiFailure> get copyWith => _$MultiFailureCopyWithImpl<MultiFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultiFailure&&const DeepCollectionEquality().equals(other._failures, _failures)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_failures),const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Failure.multi(failures: $failures, error: $error)';
}


}

/// @nodoc
abstract mixin class $MultiFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $MultiFailureCopyWith(MultiFailure value, $Res Function(MultiFailure) _then) = _$MultiFailureCopyWithImpl;
@useResult
$Res call({
 List<Failure> failures, dynamic error
});




}
/// @nodoc
class _$MultiFailureCopyWithImpl<$Res>
    implements $MultiFailureCopyWith<$Res> {
  _$MultiFailureCopyWithImpl(this._self, this._then);

  final MultiFailure _self;
  final $Res Function(MultiFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failures = null,Object? error = freezed,}) {
  return _then(MultiFailure(
failures: null == failures ? _self._failures : failures // ignore: cast_nullable_to_non_nullable
as List<Failure>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class MultiProxyFailure extends Failure {
  const MultiProxyFailure({required this.noProxyFailure, required this.proxyFailure, this.error}): super._();
  

 final  Failure noProxyFailure;
 final  Failure proxyFailure;
 final  dynamic error;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultiProxyFailureCopyWith<MultiProxyFailure> get copyWith => _$MultiProxyFailureCopyWithImpl<MultiProxyFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultiProxyFailure&&(identical(other.noProxyFailure, noProxyFailure) || other.noProxyFailure == noProxyFailure)&&(identical(other.proxyFailure, proxyFailure) || other.proxyFailure == proxyFailure)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,noProxyFailure,proxyFailure,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Failure.multiProxy(noProxyFailure: $noProxyFailure, proxyFailure: $proxyFailure, error: $error)';
}


}

/// @nodoc
abstract mixin class $MultiProxyFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $MultiProxyFailureCopyWith(MultiProxyFailure value, $Res Function(MultiProxyFailure) _then) = _$MultiProxyFailureCopyWithImpl;
@useResult
$Res call({
 Failure noProxyFailure, Failure proxyFailure, dynamic error
});


$FailureCopyWith<$Res> get noProxyFailure;$FailureCopyWith<$Res> get proxyFailure;

}
/// @nodoc
class _$MultiProxyFailureCopyWithImpl<$Res>
    implements $MultiProxyFailureCopyWith<$Res> {
  _$MultiProxyFailureCopyWithImpl(this._self, this._then);

  final MultiProxyFailure _self;
  final $Res Function(MultiProxyFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? noProxyFailure = null,Object? proxyFailure = null,Object? error = freezed,}) {
  return _then(MultiProxyFailure(
noProxyFailure: null == noProxyFailure ? _self.noProxyFailure : noProxyFailure // ignore: cast_nullable_to_non_nullable
as Failure,proxyFailure: null == proxyFailure ? _self.proxyFailure : proxyFailure // ignore: cast_nullable_to_non_nullable
as Failure,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get noProxyFailure {
  
  return $FailureCopyWith<$Res>(_self.noProxyFailure, (value) {
    return _then(_self.copyWith(noProxyFailure: value));
  });
}/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get proxyFailure {
  
  return $FailureCopyWith<$Res>(_self.proxyFailure, (value) {
    return _then(_self.copyWith(proxyFailure: value));
  });
}
}

/// @nodoc


class UnknownFailure extends Failure {
  const UnknownFailure([this.error]): super._();
  

 final  dynamic error;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownFailureCopyWith<UnknownFailure> get copyWith => _$UnknownFailureCopyWithImpl<UnknownFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownFailure&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Failure.unknown(error: $error)';
}


}

/// @nodoc
abstract mixin class $UnknownFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(UnknownFailure value, $Res Function(UnknownFailure) _then) = _$UnknownFailureCopyWithImpl;
@useResult
$Res call({
 dynamic error
});




}
/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(this._self, this._then);

  final UnknownFailure _self;
  final $Res Function(UnknownFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(UnknownFailure(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class NoInternetConnectionFailure extends Failure {
  const NoInternetConnectionFailure([this.error]): super._();
  

 final  dynamic error;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoInternetConnectionFailureCopyWith<NoInternetConnectionFailure> get copyWith => _$NoInternetConnectionFailureCopyWithImpl<NoInternetConnectionFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetConnectionFailure&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Failure.noInternetConnection(error: $error)';
}


}

/// @nodoc
abstract mixin class $NoInternetConnectionFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NoInternetConnectionFailureCopyWith(NoInternetConnectionFailure value, $Res Function(NoInternetConnectionFailure) _then) = _$NoInternetConnectionFailureCopyWithImpl;
@useResult
$Res call({
 dynamic error
});




}
/// @nodoc
class _$NoInternetConnectionFailureCopyWithImpl<$Res>
    implements $NoInternetConnectionFailureCopyWith<$Res> {
  _$NoInternetConnectionFailureCopyWithImpl(this._self, this._then);

  final NoInternetConnectionFailure _self;
  final $Res Function(NoInternetConnectionFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(NoInternetConnectionFailure(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class TimeoutFailure extends Failure {
  const TimeoutFailure([this.error]): super._();
  

 final  dynamic error;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeoutFailureCopyWith<TimeoutFailure> get copyWith => _$TimeoutFailureCopyWithImpl<TimeoutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeoutFailure&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Failure.timeout(error: $error)';
}


}

/// @nodoc
abstract mixin class $TimeoutFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $TimeoutFailureCopyWith(TimeoutFailure value, $Res Function(TimeoutFailure) _then) = _$TimeoutFailureCopyWithImpl;
@useResult
$Res call({
 dynamic error
});




}
/// @nodoc
class _$TimeoutFailureCopyWithImpl<$Res>
    implements $TimeoutFailureCopyWith<$Res> {
  _$TimeoutFailureCopyWithImpl(this._self, this._then);

  final TimeoutFailure _self;
  final $Res Function(TimeoutFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(TimeoutFailure(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class SerializationFailure extends Failure {
  const SerializationFailure([this.error]): super._();
  

 final  dynamic error;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SerializationFailureCopyWith<SerializationFailure> get copyWith => _$SerializationFailureCopyWithImpl<SerializationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SerializationFailure&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Failure.serializationFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SerializationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $SerializationFailureCopyWith(SerializationFailure value, $Res Function(SerializationFailure) _then) = _$SerializationFailureCopyWithImpl;
@useResult
$Res call({
 dynamic error
});




}
/// @nodoc
class _$SerializationFailureCopyWithImpl<$Res>
    implements $SerializationFailureCopyWith<$Res> {
  _$SerializationFailureCopyWithImpl(this._self, this._then);

  final SerializationFailure _self;
  final $Res Function(SerializationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(SerializationFailure(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class CanceledFailure extends Failure {
  const CanceledFailure([this.error]): super._();
  

 final  dynamic error;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanceledFailureCopyWith<CanceledFailure> get copyWith => _$CanceledFailureCopyWithImpl<CanceledFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanceledFailure&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Failure.canceled(error: $error)';
}


}

/// @nodoc
abstract mixin class $CanceledFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $CanceledFailureCopyWith(CanceledFailure value, $Res Function(CanceledFailure) _then) = _$CanceledFailureCopyWithImpl;
@useResult
$Res call({
 dynamic error
});




}
/// @nodoc
class _$CanceledFailureCopyWithImpl<$Res>
    implements $CanceledFailureCopyWith<$Res> {
  _$CanceledFailureCopyWithImpl(this._self, this._then);

  final CanceledFailure _self;
  final $Res Function(CanceledFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(CanceledFailure(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class UnauthenticatedFailure extends Failure {
  const UnauthenticatedFailure({this.message, this.exception}): super._();
  

 final  String? message;
 final  Object? exception;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthenticatedFailureCopyWith<UnauthenticatedFailure> get copyWith => _$UnauthenticatedFailureCopyWithImpl<UnauthenticatedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthenticatedFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.exception, exception));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(exception));

@override
String toString() {
  return 'Failure.unauthenticated(message: $message, exception: $exception)';
}


}

/// @nodoc
abstract mixin class $UnauthenticatedFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnauthenticatedFailureCopyWith(UnauthenticatedFailure value, $Res Function(UnauthenticatedFailure) _then) = _$UnauthenticatedFailureCopyWithImpl;
@useResult
$Res call({
 String? message, Object? exception
});




}
/// @nodoc
class _$UnauthenticatedFailureCopyWithImpl<$Res>
    implements $UnauthenticatedFailureCopyWith<$Res> {
  _$UnauthenticatedFailureCopyWithImpl(this._self, this._then);

  final UnauthenticatedFailure _self;
  final $Res Function(UnauthenticatedFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? exception = freezed,}) {
  return _then(UnauthenticatedFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,exception: freezed == exception ? _self.exception : exception ,
  ));
}


}

/// @nodoc


class RouteNotFoundFailure extends Failure {
  const RouteNotFoundFailure({this.message, this.exception}): super._();
  

 final  String? message;
 final  Object? exception;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteNotFoundFailureCopyWith<RouteNotFoundFailure> get copyWith => _$RouteNotFoundFailureCopyWithImpl<RouteNotFoundFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteNotFoundFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.exception, exception));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(exception));

@override
String toString() {
  return 'Failure.routeNotFound(message: $message, exception: $exception)';
}


}

/// @nodoc
abstract mixin class $RouteNotFoundFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $RouteNotFoundFailureCopyWith(RouteNotFoundFailure value, $Res Function(RouteNotFoundFailure) _then) = _$RouteNotFoundFailureCopyWithImpl;
@useResult
$Res call({
 String? message, Object? exception
});




}
/// @nodoc
class _$RouteNotFoundFailureCopyWithImpl<$Res>
    implements $RouteNotFoundFailureCopyWith<$Res> {
  _$RouteNotFoundFailureCopyWithImpl(this._self, this._then);

  final RouteNotFoundFailure _self;
  final $Res Function(RouteNotFoundFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? exception = freezed,}) {
  return _then(RouteNotFoundFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,exception: freezed == exception ? _self.exception : exception ,
  ));
}


}

/// @nodoc


class ValidationFailure extends Failure {
  const ValidationFailure({required this.message, this.field}): super._();
  

 final  String message;
 final  String? field;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationFailureCopyWith<ValidationFailure> get copyWith => _$ValidationFailureCopyWithImpl<ValidationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.field, field) || other.field == field));
}


@override
int get hashCode => Object.hash(runtimeType,message,field);

@override
String toString() {
  return 'Failure.validation(message: $message, field: $field)';
}


}

/// @nodoc
abstract mixin class $ValidationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ValidationFailureCopyWith(ValidationFailure value, $Res Function(ValidationFailure) _then) = _$ValidationFailureCopyWithImpl;
@useResult
$Res call({
 String message, String? field
});




}
/// @nodoc
class _$ValidationFailureCopyWithImpl<$Res>
    implements $ValidationFailureCopyWith<$Res> {
  _$ValidationFailureCopyWithImpl(this._self, this._then);

  final ValidationFailure _self;
  final $Res Function(ValidationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? field = freezed,}) {
  return _then(ValidationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

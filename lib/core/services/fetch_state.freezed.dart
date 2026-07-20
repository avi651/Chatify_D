// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FetchState<T,Tini,Tbsy,Terr> {

 Object? get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchState<T, Tini, Tbsy, Terr>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FetchState<$T, $Tini, $Tbsy, $Terr>(data: $data)';
}


}

/// @nodoc
class $FetchStateCopyWith<T,Tini,Tbsy,Terr,$Res>  {
$FetchStateCopyWith(FetchState<T, Tini, Tbsy, Terr> _, $Res Function(FetchState<T, Tini, Tbsy, Terr>) __);
}


/// Adds pattern-matching-related methods to [FetchState].
extension FetchStatePatterns<T,Tini,Tbsy,Terr> on FetchState<T, Tini, Tbsy, Terr> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchStateInitial<T, Tini, Tbsy, Terr> value)?  initial,TResult Function( FetchStateBusy<T, Tini, Tbsy, Terr> value)?  busy,TResult Function( FetchStateSuccess<T, Tini, Tbsy, Terr> value)?  success,TResult Function( FetchStateError<T, Tini, Tbsy, Terr> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchStateInitial() when initial != null:
return initial(_that);case FetchStateBusy() when busy != null:
return busy(_that);case FetchStateSuccess() when success != null:
return success(_that);case FetchStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchStateInitial<T, Tini, Tbsy, Terr> value)  initial,required TResult Function( FetchStateBusy<T, Tini, Tbsy, Terr> value)  busy,required TResult Function( FetchStateSuccess<T, Tini, Tbsy, Terr> value)  success,required TResult Function( FetchStateError<T, Tini, Tbsy, Terr> value)  error,}){
final _that = this;
switch (_that) {
case FetchStateInitial():
return initial(_that);case FetchStateBusy():
return busy(_that);case FetchStateSuccess():
return success(_that);case FetchStateError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchStateInitial<T, Tini, Tbsy, Terr> value)?  initial,TResult? Function( FetchStateBusy<T, Tini, Tbsy, Terr> value)?  busy,TResult? Function( FetchStateSuccess<T, Tini, Tbsy, Terr> value)?  success,TResult? Function( FetchStateError<T, Tini, Tbsy, Terr> value)?  error,}){
final _that = this;
switch (_that) {
case FetchStateInitial() when initial != null:
return initial(_that);case FetchStateBusy() when busy != null:
return busy(_that);case FetchStateSuccess() when success != null:
return success(_that);case FetchStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Tini? data)?  initial,TResult Function( Tbsy? data)?  busy,TResult Function( T data)?  success,TResult Function( Terr? data)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchStateInitial() when initial != null:
return initial(_that.data);case FetchStateBusy() when busy != null:
return busy(_that.data);case FetchStateSuccess() when success != null:
return success(_that.data);case FetchStateError() when error != null:
return error(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Tini? data)  initial,required TResult Function( Tbsy? data)  busy,required TResult Function( T data)  success,required TResult Function( Terr? data)  error,}) {final _that = this;
switch (_that) {
case FetchStateInitial():
return initial(_that.data);case FetchStateBusy():
return busy(_that.data);case FetchStateSuccess():
return success(_that.data);case FetchStateError():
return error(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Tini? data)?  initial,TResult? Function( Tbsy? data)?  busy,TResult? Function( T data)?  success,TResult? Function( Terr? data)?  error,}) {final _that = this;
switch (_that) {
case FetchStateInitial() when initial != null:
return initial(_that.data);case FetchStateBusy() when busy != null:
return busy(_that.data);case FetchStateSuccess() when success != null:
return success(_that.data);case FetchStateError() when error != null:
return error(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class FetchStateInitial<T,Tini,Tbsy,Terr> extends FetchState<T, Tini, Tbsy, Terr> {
   FetchStateInitial({this.data}): super._();
  

@override final  Tini? data;

/// Create a copy of FetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchStateInitialCopyWith<T, Tini, Tbsy, Terr, FetchStateInitial<T, Tini, Tbsy, Terr>> get copyWith => _$FetchStateInitialCopyWithImpl<T, Tini, Tbsy, Terr, FetchStateInitial<T, Tini, Tbsy, Terr>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchStateInitial<T, Tini, Tbsy, Terr>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FetchState<$T, $Tini, $Tbsy, $Terr>.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class $FetchStateInitialCopyWith<T,Tini,Tbsy,Terr,$Res> implements $FetchStateCopyWith<T, Tini, Tbsy, Terr, $Res> {
  factory $FetchStateInitialCopyWith(FetchStateInitial<T, Tini, Tbsy, Terr> value, $Res Function(FetchStateInitial<T, Tini, Tbsy, Terr>) _then) = _$FetchStateInitialCopyWithImpl;
@useResult
$Res call({
 Tini? data
});




}
/// @nodoc
class _$FetchStateInitialCopyWithImpl<T,Tini,Tbsy,Terr,$Res>
    implements $FetchStateInitialCopyWith<T, Tini, Tbsy, Terr, $Res> {
  _$FetchStateInitialCopyWithImpl(this._self, this._then);

  final FetchStateInitial<T, Tini, Tbsy, Terr> _self;
  final $Res Function(FetchStateInitial<T, Tini, Tbsy, Terr>) _then;

/// Create a copy of FetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(FetchStateInitial<T, Tini, Tbsy, Terr>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Tini?,
  ));
}


}

/// @nodoc


class FetchStateBusy<T,Tini,Tbsy,Terr> extends FetchState<T, Tini, Tbsy, Terr> {
   FetchStateBusy({this.data}): super._();
  

@override final  Tbsy? data;

/// Create a copy of FetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchStateBusyCopyWith<T, Tini, Tbsy, Terr, FetchStateBusy<T, Tini, Tbsy, Terr>> get copyWith => _$FetchStateBusyCopyWithImpl<T, Tini, Tbsy, Terr, FetchStateBusy<T, Tini, Tbsy, Terr>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchStateBusy<T, Tini, Tbsy, Terr>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FetchState<$T, $Tini, $Tbsy, $Terr>.busy(data: $data)';
}


}

/// @nodoc
abstract mixin class $FetchStateBusyCopyWith<T,Tini,Tbsy,Terr,$Res> implements $FetchStateCopyWith<T, Tini, Tbsy, Terr, $Res> {
  factory $FetchStateBusyCopyWith(FetchStateBusy<T, Tini, Tbsy, Terr> value, $Res Function(FetchStateBusy<T, Tini, Tbsy, Terr>) _then) = _$FetchStateBusyCopyWithImpl;
@useResult
$Res call({
 Tbsy? data
});




}
/// @nodoc
class _$FetchStateBusyCopyWithImpl<T,Tini,Tbsy,Terr,$Res>
    implements $FetchStateBusyCopyWith<T, Tini, Tbsy, Terr, $Res> {
  _$FetchStateBusyCopyWithImpl(this._self, this._then);

  final FetchStateBusy<T, Tini, Tbsy, Terr> _self;
  final $Res Function(FetchStateBusy<T, Tini, Tbsy, Terr>) _then;

/// Create a copy of FetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(FetchStateBusy<T, Tini, Tbsy, Terr>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Tbsy?,
  ));
}


}

/// @nodoc


class FetchStateSuccess<T,Tini,Tbsy,Terr> extends FetchState<T, Tini, Tbsy, Terr> {
   FetchStateSuccess({required this.data}): super._();
  

@override final  T data;

/// Create a copy of FetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchStateSuccessCopyWith<T, Tini, Tbsy, Terr, FetchStateSuccess<T, Tini, Tbsy, Terr>> get copyWith => _$FetchStateSuccessCopyWithImpl<T, Tini, Tbsy, Terr, FetchStateSuccess<T, Tini, Tbsy, Terr>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchStateSuccess<T, Tini, Tbsy, Terr>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FetchState<$T, $Tini, $Tbsy, $Terr>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $FetchStateSuccessCopyWith<T,Tini,Tbsy,Terr,$Res> implements $FetchStateCopyWith<T, Tini, Tbsy, Terr, $Res> {
  factory $FetchStateSuccessCopyWith(FetchStateSuccess<T, Tini, Tbsy, Terr> value, $Res Function(FetchStateSuccess<T, Tini, Tbsy, Terr>) _then) = _$FetchStateSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$FetchStateSuccessCopyWithImpl<T,Tini,Tbsy,Terr,$Res>
    implements $FetchStateSuccessCopyWith<T, Tini, Tbsy, Terr, $Res> {
  _$FetchStateSuccessCopyWithImpl(this._self, this._then);

  final FetchStateSuccess<T, Tini, Tbsy, Terr> _self;
  final $Res Function(FetchStateSuccess<T, Tini, Tbsy, Terr>) _then;

/// Create a copy of FetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(FetchStateSuccess<T, Tini, Tbsy, Terr>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class FetchStateError<T,Tini,Tbsy,Terr> extends FetchState<T, Tini, Tbsy, Terr> {
   FetchStateError({this.data}): super._();
  

@override final  Terr? data;

/// Create a copy of FetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchStateErrorCopyWith<T, Tini, Tbsy, Terr, FetchStateError<T, Tini, Tbsy, Terr>> get copyWith => _$FetchStateErrorCopyWithImpl<T, Tini, Tbsy, Terr, FetchStateError<T, Tini, Tbsy, Terr>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchStateError<T, Tini, Tbsy, Terr>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FetchState<$T, $Tini, $Tbsy, $Terr>.error(data: $data)';
}


}

/// @nodoc
abstract mixin class $FetchStateErrorCopyWith<T,Tini,Tbsy,Terr,$Res> implements $FetchStateCopyWith<T, Tini, Tbsy, Terr, $Res> {
  factory $FetchStateErrorCopyWith(FetchStateError<T, Tini, Tbsy, Terr> value, $Res Function(FetchStateError<T, Tini, Tbsy, Terr>) _then) = _$FetchStateErrorCopyWithImpl;
@useResult
$Res call({
 Terr? data
});




}
/// @nodoc
class _$FetchStateErrorCopyWithImpl<T,Tini,Tbsy,Terr,$Res>
    implements $FetchStateErrorCopyWith<T, Tini, Tbsy, Terr, $Res> {
  _$FetchStateErrorCopyWithImpl(this._self, this._then);

  final FetchStateError<T, Tini, Tbsy, Terr> _self;
  final $Res Function(FetchStateError<T, Tini, Tbsy, Terr>) _then;

/// Create a copy of FetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(FetchStateError<T, Tini, Tbsy, Terr>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Terr?,
  ));
}


}

// dart format on

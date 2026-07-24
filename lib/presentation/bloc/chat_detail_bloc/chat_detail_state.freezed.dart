// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatDetailState {

 List<MessageEntity> get messages; bool get isLoading; String? get errorMessage; int? get currentUserId;
/// Create a copy of ChatDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatDetailStateCopyWith<ChatDetailState> get copyWith => _$ChatDetailStateCopyWithImpl<ChatDetailState>(this as ChatDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatDetailState&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.currentUserId, currentUserId) || other.currentUserId == currentUserId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),isLoading,errorMessage,currentUserId);

@override
String toString() {
  return 'ChatDetailState(messages: $messages, isLoading: $isLoading, errorMessage: $errorMessage, currentUserId: $currentUserId)';
}


}

/// @nodoc
abstract mixin class $ChatDetailStateCopyWith<$Res>  {
  factory $ChatDetailStateCopyWith(ChatDetailState value, $Res Function(ChatDetailState) _then) = _$ChatDetailStateCopyWithImpl;
@useResult
$Res call({
 List<MessageEntity> messages, bool isLoading, String? errorMessage, int? currentUserId
});




}
/// @nodoc
class _$ChatDetailStateCopyWithImpl<$Res>
    implements $ChatDetailStateCopyWith<$Res> {
  _$ChatDetailStateCopyWithImpl(this._self, this._then);

  final ChatDetailState _self;
  final $Res Function(ChatDetailState) _then;

/// Create a copy of ChatDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? isLoading = null,Object? errorMessage = freezed,Object? currentUserId = freezed,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,currentUserId: freezed == currentUserId ? _self.currentUserId : currentUserId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatDetailState].
extension ChatDetailStatePatterns on ChatDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatDetailState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatDetailState value)  $default,){
final _that = this;
switch (_that) {
case _ChatDetailState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _ChatDetailState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MessageEntity> messages,  bool isLoading,  String? errorMessage,  int? currentUserId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatDetailState() when $default != null:
return $default(_that.messages,_that.isLoading,_that.errorMessage,_that.currentUserId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MessageEntity> messages,  bool isLoading,  String? errorMessage,  int? currentUserId)  $default,) {final _that = this;
switch (_that) {
case _ChatDetailState():
return $default(_that.messages,_that.isLoading,_that.errorMessage,_that.currentUserId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MessageEntity> messages,  bool isLoading,  String? errorMessage,  int? currentUserId)?  $default,) {final _that = this;
switch (_that) {
case _ChatDetailState() when $default != null:
return $default(_that.messages,_that.isLoading,_that.errorMessage,_that.currentUserId);case _:
  return null;

}
}

}

/// @nodoc


class _ChatDetailState implements ChatDetailState {
  const _ChatDetailState({final  List<MessageEntity> messages = const [], this.isLoading = false, this.errorMessage, this.currentUserId}): _messages = messages;
  

 final  List<MessageEntity> _messages;
@override@JsonKey() List<MessageEntity> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override final  int? currentUserId;

/// Create a copy of ChatDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatDetailStateCopyWith<_ChatDetailState> get copyWith => __$ChatDetailStateCopyWithImpl<_ChatDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatDetailState&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.currentUserId, currentUserId) || other.currentUserId == currentUserId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),isLoading,errorMessage,currentUserId);

@override
String toString() {
  return 'ChatDetailState(messages: $messages, isLoading: $isLoading, errorMessage: $errorMessage, currentUserId: $currentUserId)';
}


}

/// @nodoc
abstract mixin class _$ChatDetailStateCopyWith<$Res> implements $ChatDetailStateCopyWith<$Res> {
  factory _$ChatDetailStateCopyWith(_ChatDetailState value, $Res Function(_ChatDetailState) _then) = __$ChatDetailStateCopyWithImpl;
@override @useResult
$Res call({
 List<MessageEntity> messages, bool isLoading, String? errorMessage, int? currentUserId
});




}
/// @nodoc
class __$ChatDetailStateCopyWithImpl<$Res>
    implements _$ChatDetailStateCopyWith<$Res> {
  __$ChatDetailStateCopyWithImpl(this._self, this._then);

  final _ChatDetailState _self;
  final $Res Function(_ChatDetailState) _then;

/// Create a copy of ChatDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? isLoading = null,Object? errorMessage = freezed,Object? currentUserId = freezed,}) {
  return _then(_ChatDetailState(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,currentUserId: freezed == currentUserId ? _self.currentUserId : currentUserId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

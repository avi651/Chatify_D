// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatDetailEvent()';
}


}

/// @nodoc
class $ChatDetailEventCopyWith<$Res>  {
$ChatDetailEventCopyWith(ChatDetailEvent _, $Res Function(ChatDetailEvent) __);
}


/// Adds pattern-matching-related methods to [ChatDetailEvent].
extension ChatDetailEventPatterns on ChatDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadCurrentUser value)?  loadCurrentUser,TResult Function( LoadMessages value)?  loadMessages,TResult Function( SendMessage value)?  sendMessage,TResult Function( MessageReceived value)?  messageReceived,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadCurrentUser() when loadCurrentUser != null:
return loadCurrentUser(_that);case LoadMessages() when loadMessages != null:
return loadMessages(_that);case SendMessage() when sendMessage != null:
return sendMessage(_that);case MessageReceived() when messageReceived != null:
return messageReceived(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadCurrentUser value)  loadCurrentUser,required TResult Function( LoadMessages value)  loadMessages,required TResult Function( SendMessage value)  sendMessage,required TResult Function( MessageReceived value)  messageReceived,}){
final _that = this;
switch (_that) {
case LoadCurrentUser():
return loadCurrentUser(_that);case LoadMessages():
return loadMessages(_that);case SendMessage():
return sendMessage(_that);case MessageReceived():
return messageReceived(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadCurrentUser value)?  loadCurrentUser,TResult? Function( LoadMessages value)?  loadMessages,TResult? Function( SendMessage value)?  sendMessage,TResult? Function( MessageReceived value)?  messageReceived,}){
final _that = this;
switch (_that) {
case LoadCurrentUser() when loadCurrentUser != null:
return loadCurrentUser(_that);case LoadMessages() when loadMessages != null:
return loadMessages(_that);case SendMessage() when sendMessage != null:
return sendMessage(_that);case MessageReceived() when messageReceived != null:
return messageReceived(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadCurrentUser,TResult Function( int conversationId)?  loadMessages,TResult Function( int conversationId,  String message)?  sendMessage,TResult Function( Map<String, dynamic> data)?  messageReceived,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadCurrentUser() when loadCurrentUser != null:
return loadCurrentUser();case LoadMessages() when loadMessages != null:
return loadMessages(_that.conversationId);case SendMessage() when sendMessage != null:
return sendMessage(_that.conversationId,_that.message);case MessageReceived() when messageReceived != null:
return messageReceived(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadCurrentUser,required TResult Function( int conversationId)  loadMessages,required TResult Function( int conversationId,  String message)  sendMessage,required TResult Function( Map<String, dynamic> data)  messageReceived,}) {final _that = this;
switch (_that) {
case LoadCurrentUser():
return loadCurrentUser();case LoadMessages():
return loadMessages(_that.conversationId);case SendMessage():
return sendMessage(_that.conversationId,_that.message);case MessageReceived():
return messageReceived(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadCurrentUser,TResult? Function( int conversationId)?  loadMessages,TResult? Function( int conversationId,  String message)?  sendMessage,TResult? Function( Map<String, dynamic> data)?  messageReceived,}) {final _that = this;
switch (_that) {
case LoadCurrentUser() when loadCurrentUser != null:
return loadCurrentUser();case LoadMessages() when loadMessages != null:
return loadMessages(_that.conversationId);case SendMessage() when sendMessage != null:
return sendMessage(_that.conversationId,_that.message);case MessageReceived() when messageReceived != null:
return messageReceived(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class LoadCurrentUser implements ChatDetailEvent {
  const LoadCurrentUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCurrentUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatDetailEvent.loadCurrentUser()';
}


}




/// @nodoc


class LoadMessages implements ChatDetailEvent {
  const LoadMessages({required this.conversationId});
  

 final  int conversationId;

/// Create a copy of ChatDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMessagesCopyWith<LoadMessages> get copyWith => _$LoadMessagesCopyWithImpl<LoadMessages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMessages&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId);

@override
String toString() {
  return 'ChatDetailEvent.loadMessages(conversationId: $conversationId)';
}


}

/// @nodoc
abstract mixin class $LoadMessagesCopyWith<$Res> implements $ChatDetailEventCopyWith<$Res> {
  factory $LoadMessagesCopyWith(LoadMessages value, $Res Function(LoadMessages) _then) = _$LoadMessagesCopyWithImpl;
@useResult
$Res call({
 int conversationId
});




}
/// @nodoc
class _$LoadMessagesCopyWithImpl<$Res>
    implements $LoadMessagesCopyWith<$Res> {
  _$LoadMessagesCopyWithImpl(this._self, this._then);

  final LoadMessages _self;
  final $Res Function(LoadMessages) _then;

/// Create a copy of ChatDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,}) {
  return _then(LoadMessages(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SendMessage implements ChatDetailEvent {
  const SendMessage({required this.conversationId, required this.message});
  

 final  int conversationId;
 final  String message;

/// Create a copy of ChatDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMessageCopyWith<SendMessage> get copyWith => _$SendMessageCopyWithImpl<SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMessage&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,message);

@override
String toString() {
  return 'ChatDetailEvent.sendMessage(conversationId: $conversationId, message: $message)';
}


}

/// @nodoc
abstract mixin class $SendMessageCopyWith<$Res> implements $ChatDetailEventCopyWith<$Res> {
  factory $SendMessageCopyWith(SendMessage value, $Res Function(SendMessage) _then) = _$SendMessageCopyWithImpl;
@useResult
$Res call({
 int conversationId, String message
});




}
/// @nodoc
class _$SendMessageCopyWithImpl<$Res>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(this._self, this._then);

  final SendMessage _self;
  final $Res Function(SendMessage) _then;

/// Create a copy of ChatDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? message = null,}) {
  return _then(SendMessage(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MessageReceived implements ChatDetailEvent {
  const MessageReceived({required final  Map<String, dynamic> data}): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of ChatDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageReceivedCopyWith<MessageReceived> get copyWith => _$MessageReceivedCopyWithImpl<MessageReceived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageReceived&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ChatDetailEvent.messageReceived(data: $data)';
}


}

/// @nodoc
abstract mixin class $MessageReceivedCopyWith<$Res> implements $ChatDetailEventCopyWith<$Res> {
  factory $MessageReceivedCopyWith(MessageReceived value, $Res Function(MessageReceived) _then) = _$MessageReceivedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$MessageReceivedCopyWithImpl<$Res>
    implements $MessageReceivedCopyWith<$Res> {
  _$MessageReceivedCopyWithImpl(this._self, this._then);

  final MessageReceived _self;
  final $Res Function(MessageReceived) _then;

/// Create a copy of ChatDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(MessageReceived(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on

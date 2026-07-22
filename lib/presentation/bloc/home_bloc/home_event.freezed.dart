// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadConversations value)?  loadConversations,TResult Function( ConnectSocket value)?  connectSocket,TResult Function( ConversationsReceived value)?  conversationsReceived,TResult Function( MessageReceived value)?  messageReceived,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadConversations() when loadConversations != null:
return loadConversations(_that);case ConnectSocket() when connectSocket != null:
return connectSocket(_that);case ConversationsReceived() when conversationsReceived != null:
return conversationsReceived(_that);case MessageReceived() when messageReceived != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadConversations value)  loadConversations,required TResult Function( ConnectSocket value)  connectSocket,required TResult Function( ConversationsReceived value)  conversationsReceived,required TResult Function( MessageReceived value)  messageReceived,}){
final _that = this;
switch (_that) {
case LoadConversations():
return loadConversations(_that);case ConnectSocket():
return connectSocket(_that);case ConversationsReceived():
return conversationsReceived(_that);case MessageReceived():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadConversations value)?  loadConversations,TResult? Function( ConnectSocket value)?  connectSocket,TResult? Function( ConversationsReceived value)?  conversationsReceived,TResult? Function( MessageReceived value)?  messageReceived,}){
final _that = this;
switch (_that) {
case LoadConversations() when loadConversations != null:
return loadConversations(_that);case ConnectSocket() when connectSocket != null:
return connectSocket(_that);case ConversationsReceived() when conversationsReceived != null:
return conversationsReceived(_that);case MessageReceived() when messageReceived != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadConversations,TResult Function()?  connectSocket,TResult Function( List<dynamic> data)?  conversationsReceived,TResult Function( Map<String, dynamic> data)?  messageReceived,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadConversations() when loadConversations != null:
return loadConversations();case ConnectSocket() when connectSocket != null:
return connectSocket();case ConversationsReceived() when conversationsReceived != null:
return conversationsReceived(_that.data);case MessageReceived() when messageReceived != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadConversations,required TResult Function()  connectSocket,required TResult Function( List<dynamic> data)  conversationsReceived,required TResult Function( Map<String, dynamic> data)  messageReceived,}) {final _that = this;
switch (_that) {
case LoadConversations():
return loadConversations();case ConnectSocket():
return connectSocket();case ConversationsReceived():
return conversationsReceived(_that.data);case MessageReceived():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadConversations,TResult? Function()?  connectSocket,TResult? Function( List<dynamic> data)?  conversationsReceived,TResult? Function( Map<String, dynamic> data)?  messageReceived,}) {final _that = this;
switch (_that) {
case LoadConversations() when loadConversations != null:
return loadConversations();case ConnectSocket() when connectSocket != null:
return connectSocket();case ConversationsReceived() when conversationsReceived != null:
return conversationsReceived(_that.data);case MessageReceived() when messageReceived != null:
return messageReceived(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class LoadConversations implements HomeEvent {
  const LoadConversations();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadConversations);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadConversations()';
}


}




/// @nodoc


class ConnectSocket implements HomeEvent {
  const ConnectSocket();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectSocket);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.connectSocket()';
}


}




/// @nodoc


class ConversationsReceived implements HomeEvent {
  const ConversationsReceived(final  List<dynamic> data): _data = data;
  

 final  List<dynamic> _data;
 List<dynamic> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationsReceivedCopyWith<ConversationsReceived> get copyWith => _$ConversationsReceivedCopyWithImpl<ConversationsReceived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationsReceived&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'HomeEvent.conversationsReceived(data: $data)';
}


}

/// @nodoc
abstract mixin class $ConversationsReceivedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $ConversationsReceivedCopyWith(ConversationsReceived value, $Res Function(ConversationsReceived) _then) = _$ConversationsReceivedCopyWithImpl;
@useResult
$Res call({
 List<dynamic> data
});




}
/// @nodoc
class _$ConversationsReceivedCopyWithImpl<$Res>
    implements $ConversationsReceivedCopyWith<$Res> {
  _$ConversationsReceivedCopyWithImpl(this._self, this._then);

  final ConversationsReceived _self;
  final $Res Function(ConversationsReceived) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ConversationsReceived(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

/// @nodoc


class MessageReceived implements HomeEvent {
  const MessageReceived(final  Map<String, dynamic> data): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of HomeEvent
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
  return 'HomeEvent.messageReceived(data: $data)';
}


}

/// @nodoc
abstract mixin class $MessageReceivedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
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

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(MessageReceived(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on

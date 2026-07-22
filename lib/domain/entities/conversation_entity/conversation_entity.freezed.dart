// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConversationEntity {

 int get id;@JsonKey(name: 'is_group') bool get isGroup; String get name;@JsonKey(name: 'created_at') String get createdAt; String? get lastMessage;
/// Create a copy of ConversationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationEntityCopyWith<ConversationEntity> get copyWith => _$ConversationEntityCopyWithImpl<ConversationEntity>(this as ConversationEntity, _$identity);

  /// Serializes this ConversationEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isGroup,name,createdAt,lastMessage);

@override
String toString() {
  return 'ConversationEntity(id: $id, isGroup: $isGroup, name: $name, createdAt: $createdAt, lastMessage: $lastMessage)';
}


}

/// @nodoc
abstract mixin class $ConversationEntityCopyWith<$Res>  {
  factory $ConversationEntityCopyWith(ConversationEntity value, $Res Function(ConversationEntity) _then) = _$ConversationEntityCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'is_group') bool isGroup, String name,@JsonKey(name: 'created_at') String createdAt, String? lastMessage
});




}
/// @nodoc
class _$ConversationEntityCopyWithImpl<$Res>
    implements $ConversationEntityCopyWith<$Res> {
  _$ConversationEntityCopyWithImpl(this._self, this._then);

  final ConversationEntity _self;
  final $Res Function(ConversationEntity) _then;

/// Create a copy of ConversationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isGroup = null,Object? name = null,Object? createdAt = null,Object? lastMessage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isGroup: null == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationEntity].
extension ConversationEntityPatterns on ConversationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationEntity value)  $default,){
final _that = this;
switch (_that) {
case _ConversationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'is_group')  bool isGroup,  String name, @JsonKey(name: 'created_at')  String createdAt,  String? lastMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationEntity() when $default != null:
return $default(_that.id,_that.isGroup,_that.name,_that.createdAt,_that.lastMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'is_group')  bool isGroup,  String name, @JsonKey(name: 'created_at')  String createdAt,  String? lastMessage)  $default,) {final _that = this;
switch (_that) {
case _ConversationEntity():
return $default(_that.id,_that.isGroup,_that.name,_that.createdAt,_that.lastMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'is_group')  bool isGroup,  String name, @JsonKey(name: 'created_at')  String createdAt,  String? lastMessage)?  $default,) {final _that = this;
switch (_that) {
case _ConversationEntity() when $default != null:
return $default(_that.id,_that.isGroup,_that.name,_that.createdAt,_that.lastMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationEntity implements ConversationEntity {
  const _ConversationEntity({required this.id, @JsonKey(name: 'is_group') required this.isGroup, required this.name, @JsonKey(name: 'created_at') required this.createdAt, this.lastMessage});
  factory _ConversationEntity.fromJson(Map<String, dynamic> json) => _$ConversationEntityFromJson(json);

@override final  int id;
@override@JsonKey(name: 'is_group') final  bool isGroup;
@override final  String name;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override final  String? lastMessage;

/// Create a copy of ConversationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationEntityCopyWith<_ConversationEntity> get copyWith => __$ConversationEntityCopyWithImpl<_ConversationEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isGroup,name,createdAt,lastMessage);

@override
String toString() {
  return 'ConversationEntity(id: $id, isGroup: $isGroup, name: $name, createdAt: $createdAt, lastMessage: $lastMessage)';
}


}

/// @nodoc
abstract mixin class _$ConversationEntityCopyWith<$Res> implements $ConversationEntityCopyWith<$Res> {
  factory _$ConversationEntityCopyWith(_ConversationEntity value, $Res Function(_ConversationEntity) _then) = __$ConversationEntityCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'is_group') bool isGroup, String name,@JsonKey(name: 'created_at') String createdAt, String? lastMessage
});




}
/// @nodoc
class __$ConversationEntityCopyWithImpl<$Res>
    implements _$ConversationEntityCopyWith<$Res> {
  __$ConversationEntityCopyWithImpl(this._self, this._then);

  final _ConversationEntity _self;
  final $Res Function(_ConversationEntity) _then;

/// Create a copy of ConversationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isGroup = null,Object? name = null,Object? createdAt = null,Object? lastMessage = freezed,}) {
  return _then(_ConversationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isGroup: null == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

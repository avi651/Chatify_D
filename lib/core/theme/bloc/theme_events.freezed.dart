// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeEvents {

 ThemeMode get mode;
/// Create a copy of ThemeEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeEventsCopyWith<ThemeEvents> get copyWith => _$ThemeEventsCopyWithImpl<ThemeEvents>(this as ThemeEvents, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeEvents&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'ThemeEvents(mode: $mode)';
}


}

/// @nodoc
abstract mixin class $ThemeEventsCopyWith<$Res>  {
  factory $ThemeEventsCopyWith(ThemeEvents value, $Res Function(ThemeEvents) _then) = _$ThemeEventsCopyWithImpl;
@useResult
$Res call({
 ThemeMode mode
});




}
/// @nodoc
class _$ThemeEventsCopyWithImpl<$Res>
    implements $ThemeEventsCopyWith<$Res> {
  _$ThemeEventsCopyWithImpl(this._self, this._then);

  final ThemeEvents _self;
  final $Res Function(ThemeEvents) _then;

/// Create a copy of ThemeEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeEvents].
extension ThemeEventsPatterns on ThemeEvents {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SetThemeModeEvent value)?  setThemeMode,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SetThemeModeEvent() when setThemeMode != null:
return setThemeMode(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SetThemeModeEvent value)  setThemeMode,}){
final _that = this;
switch (_that) {
case SetThemeModeEvent():
return setThemeMode(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SetThemeModeEvent value)?  setThemeMode,}){
final _that = this;
switch (_that) {
case SetThemeModeEvent() when setThemeMode != null:
return setThemeMode(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ThemeMode mode)?  setThemeMode,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SetThemeModeEvent() when setThemeMode != null:
return setThemeMode(_that.mode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ThemeMode mode)  setThemeMode,}) {final _that = this;
switch (_that) {
case SetThemeModeEvent():
return setThemeMode(_that.mode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ThemeMode mode)?  setThemeMode,}) {final _that = this;
switch (_that) {
case SetThemeModeEvent() when setThemeMode != null:
return setThemeMode(_that.mode);case _:
  return null;

}
}

}

/// @nodoc


class SetThemeModeEvent implements ThemeEvents {
  const SetThemeModeEvent({required this.mode});
  

@override final  ThemeMode mode;

/// Create a copy of ThemeEvents
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetThemeModeEventCopyWith<SetThemeModeEvent> get copyWith => _$SetThemeModeEventCopyWithImpl<SetThemeModeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetThemeModeEvent&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'ThemeEvents.setThemeMode(mode: $mode)';
}


}

/// @nodoc
abstract mixin class $SetThemeModeEventCopyWith<$Res> implements $ThemeEventsCopyWith<$Res> {
  factory $SetThemeModeEventCopyWith(SetThemeModeEvent value, $Res Function(SetThemeModeEvent) _then) = _$SetThemeModeEventCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode mode
});




}
/// @nodoc
class _$SetThemeModeEventCopyWithImpl<$Res>
    implements $SetThemeModeEventCopyWith<$Res> {
  _$SetThemeModeEventCopyWithImpl(this._self, this._then);

  final SetThemeModeEvent _self;
  final $Res Function(SetThemeModeEvent) _then;

/// Create a copy of ThemeEvents
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,}) {
  return _then(SetThemeModeEvent(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}


}

// dart format on

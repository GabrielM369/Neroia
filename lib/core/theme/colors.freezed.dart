// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LightDarkColor {

 Color get light; Color get dark;
/// Create a copy of LightDarkColor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LightDarkColorCopyWith<LightDarkColor> get copyWith => _$LightDarkColorCopyWithImpl<LightDarkColor>(this as LightDarkColor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LightDarkColor&&(identical(other.light, light) || other.light == light)&&(identical(other.dark, dark) || other.dark == dark));
}


@override
int get hashCode => Object.hash(runtimeType,light,dark);

@override
String toString() {
  return 'LightDarkColor(light: $light, dark: $dark)';
}


}

/// @nodoc
abstract mixin class $LightDarkColorCopyWith<$Res>  {
  factory $LightDarkColorCopyWith(LightDarkColor value, $Res Function(LightDarkColor) _then) = _$LightDarkColorCopyWithImpl;
@useResult
$Res call({
 Color light, Color dark
});




}
/// @nodoc
class _$LightDarkColorCopyWithImpl<$Res>
    implements $LightDarkColorCopyWith<$Res> {
  _$LightDarkColorCopyWithImpl(this._self, this._then);

  final LightDarkColor _self;
  final $Res Function(LightDarkColor) _then;

/// Create a copy of LightDarkColor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? light = null,Object? dark = null,}) {
  return _then(_self.copyWith(
light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as Color,dark: null == dark ? _self.dark : dark // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// @nodoc


class _LightDarkColor extends LightDarkColor {
  const _LightDarkColor({required this.light, required this.dark}): super._();
  

@override final  Color light;
@override final  Color dark;

/// Create a copy of LightDarkColor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LightDarkColorCopyWith<_LightDarkColor> get copyWith => __$LightDarkColorCopyWithImpl<_LightDarkColor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LightDarkColor&&(identical(other.light, light) || other.light == light)&&(identical(other.dark, dark) || other.dark == dark));
}


@override
int get hashCode => Object.hash(runtimeType,light,dark);

@override
String toString() {
  return 'LightDarkColor(light: $light, dark: $dark)';
}


}

/// @nodoc
abstract mixin class _$LightDarkColorCopyWith<$Res> implements $LightDarkColorCopyWith<$Res> {
  factory _$LightDarkColorCopyWith(_LightDarkColor value, $Res Function(_LightDarkColor) _then) = __$LightDarkColorCopyWithImpl;
@override @useResult
$Res call({
 Color light, Color dark
});




}
/// @nodoc
class __$LightDarkColorCopyWithImpl<$Res>
    implements _$LightDarkColorCopyWith<$Res> {
  __$LightDarkColorCopyWithImpl(this._self, this._then);

  final _LightDarkColor _self;
  final $Res Function(_LightDarkColor) _then;

/// Create a copy of LightDarkColor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? light = null,Object? dark = null,}) {
  return _then(_LightDarkColor(
light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as Color,dark: null == dark ? _self.dark : dark // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'environment_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EnvironmentConfig implements DiagnosticableTreeMixin {

 String get logLevel; EnvironmentType get type;
/// Create a copy of EnvironmentConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnvironmentConfigCopyWith<EnvironmentConfig> get copyWith => _$EnvironmentConfigCopyWithImpl<EnvironmentConfig>(this as EnvironmentConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EnvironmentConfig'))
    ..add(DiagnosticsProperty('logLevel', logLevel))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnvironmentConfig&&(identical(other.logLevel, logLevel) || other.logLevel == logLevel)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,logLevel,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EnvironmentConfig(logLevel: $logLevel, type: $type)';
}


}

/// @nodoc
abstract mixin class $EnvironmentConfigCopyWith<$Res>  {
  factory $EnvironmentConfigCopyWith(EnvironmentConfig value, $Res Function(EnvironmentConfig) _then) = _$EnvironmentConfigCopyWithImpl;
@useResult
$Res call({
 String logLevel, EnvironmentType type
});




}
/// @nodoc
class _$EnvironmentConfigCopyWithImpl<$Res>
    implements $EnvironmentConfigCopyWith<$Res> {
  _$EnvironmentConfigCopyWithImpl(this._self, this._then);

  final EnvironmentConfig _self;
  final $Res Function(EnvironmentConfig) _then;

/// Create a copy of EnvironmentConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logLevel = null,Object? type = null,}) {
  return _then(_self.copyWith(
logLevel: null == logLevel ? _self.logLevel : logLevel // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EnvironmentType,
  ));
}

}


/// @nodoc


class _EnvironmentConfig with DiagnosticableTreeMixin implements EnvironmentConfig {
  const _EnvironmentConfig({required this.logLevel, required this.type});
  

@override final  String logLevel;
@override final  EnvironmentType type;

/// Create a copy of EnvironmentConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnvironmentConfigCopyWith<_EnvironmentConfig> get copyWith => __$EnvironmentConfigCopyWithImpl<_EnvironmentConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EnvironmentConfig'))
    ..add(DiagnosticsProperty('logLevel', logLevel))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnvironmentConfig&&(identical(other.logLevel, logLevel) || other.logLevel == logLevel)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,logLevel,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EnvironmentConfig(logLevel: $logLevel, type: $type)';
}


}

/// @nodoc
abstract mixin class _$EnvironmentConfigCopyWith<$Res> implements $EnvironmentConfigCopyWith<$Res> {
  factory _$EnvironmentConfigCopyWith(_EnvironmentConfig value, $Res Function(_EnvironmentConfig) _then) = __$EnvironmentConfigCopyWithImpl;
@override @useResult
$Res call({
 String logLevel, EnvironmentType type
});




}
/// @nodoc
class __$EnvironmentConfigCopyWithImpl<$Res>
    implements _$EnvironmentConfigCopyWith<$Res> {
  __$EnvironmentConfigCopyWithImpl(this._self, this._then);

  final _EnvironmentConfig _self;
  final $Res Function(_EnvironmentConfig) _then;

/// Create a copy of EnvironmentConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logLevel = null,Object? type = null,}) {
  return _then(_EnvironmentConfig(
logLevel: null == logLevel ? _self.logLevel : logLevel // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EnvironmentType,
  ));
}


}

// dart format on

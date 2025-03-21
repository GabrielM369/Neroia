// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datasource_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DatasourceError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatasourceError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatasourceError()';
}


}

/// @nodoc
class $DatasourceErrorCopyWith<$Res>  {
$DatasourceErrorCopyWith(DatasourceError _, $Res Function(DatasourceError) __);
}


/// @nodoc


class ServerError implements DatasourceError {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatasourceError.serverError()';
}


}




/// @nodoc


class CacheError implements DatasourceError {
  const CacheError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatasourceError.cacheError()';
}


}




/// @nodoc


class UnknownError implements DatasourceError {
  const UnknownError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DatasourceError.unknownError()';
}


}




// dart format on

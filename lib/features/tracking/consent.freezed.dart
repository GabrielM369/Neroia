// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConsentState {

 bool get marketing; bool get statistics; bool get necessary;
/// Create a copy of ConsentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsentStateCopyWith<ConsentState> get copyWith => _$ConsentStateCopyWithImpl<ConsentState>(this as ConsentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsentState&&(identical(other.marketing, marketing) || other.marketing == marketing)&&(identical(other.statistics, statistics) || other.statistics == statistics)&&(identical(other.necessary, necessary) || other.necessary == necessary));
}


@override
int get hashCode => Object.hash(runtimeType,marketing,statistics,necessary);

@override
String toString() {
  return 'ConsentState(marketing: $marketing, statistics: $statistics, necessary: $necessary)';
}


}

/// @nodoc
abstract mixin class $ConsentStateCopyWith<$Res>  {
  factory $ConsentStateCopyWith(ConsentState value, $Res Function(ConsentState) _then) = _$ConsentStateCopyWithImpl;
@useResult
$Res call({
 bool marketing, bool statistics, bool necessary
});




}
/// @nodoc
class _$ConsentStateCopyWithImpl<$Res>
    implements $ConsentStateCopyWith<$Res> {
  _$ConsentStateCopyWithImpl(this._self, this._then);

  final ConsentState _self;
  final $Res Function(ConsentState) _then;

/// Create a copy of ConsentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? marketing = null,Object? statistics = null,Object? necessary = null,}) {
  return _then(ConsentState(
marketing: null == marketing ? _self.marketing : marketing // ignore: cast_nullable_to_non_nullable
as bool,statistics: null == statistics ? _self.statistics : statistics // ignore: cast_nullable_to_non_nullable
as bool,necessary: null == necessary ? _self.necessary : necessary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


// dart format on

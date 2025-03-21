// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrackingState {

 List<RouteObserver> get observers;
/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackingStateCopyWith<TrackingState> get copyWith => _$TrackingStateCopyWithImpl<TrackingState>(this as TrackingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingState&&const DeepCollectionEquality().equals(other.observers, observers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(observers));

@override
String toString() {
  return 'TrackingState(observers: $observers)';
}


}

/// @nodoc
abstract mixin class $TrackingStateCopyWith<$Res>  {
  factory $TrackingStateCopyWith(TrackingState value, $Res Function(TrackingState) _then) = _$TrackingStateCopyWithImpl;
@useResult
$Res call({
 List<RouteObserver<Route<dynamic>>> observers
});




}
/// @nodoc
class _$TrackingStateCopyWithImpl<$Res>
    implements $TrackingStateCopyWith<$Res> {
  _$TrackingStateCopyWithImpl(this._self, this._then);

  final TrackingState _self;
  final $Res Function(TrackingState) _then;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? observers = null,}) {
  return _then(TrackingState(
observers: null == observers ? _self.observers! : observers // ignore: cast_nullable_to_non_nullable
as List<RouteObserver<Route<dynamic>>>,
  ));
}

}


// dart format on

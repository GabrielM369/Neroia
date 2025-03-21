// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'neroia_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NeroiaUser {

 String get id; String get email; String get name; String? get photoUrl;
/// Create a copy of NeroiaUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NeroiaUserCopyWith<NeroiaUser> get copyWith => _$NeroiaUserCopyWithImpl<NeroiaUser>(this as NeroiaUser, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NeroiaUser&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,name,photoUrl);

@override
String toString() {
  return 'NeroiaUser(id: $id, email: $email, name: $name, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class $NeroiaUserCopyWith<$Res>  {
  factory $NeroiaUserCopyWith(NeroiaUser value, $Res Function(NeroiaUser) _then) = _$NeroiaUserCopyWithImpl;
@useResult
$Res call({
 String id, String email, String name, String? photoUrl
});




}
/// @nodoc
class _$NeroiaUserCopyWithImpl<$Res>
    implements $NeroiaUserCopyWith<$Res> {
  _$NeroiaUserCopyWithImpl(this._self, this._then);

  final NeroiaUser _self;
  final $Res Function(NeroiaUser) _then;

/// Create a copy of NeroiaUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? name = null,Object? photoUrl = freezed,}) {
  return _then(NeroiaUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


// dart format on

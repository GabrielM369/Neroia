import 'package:freezed_annotation/freezed_annotation.dart';

part 'neroia_user.freezed.dart';

@freezed
class NeroiaUser with _$NeroiaUser {
  final String id;
  final String email;
  final String name;
  final String? photoUrl;

  NeroiaUser({required this.id, required this.email, required this.name, required this.photoUrl});
}

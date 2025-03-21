import 'package:firebase_auth/firebase_auth.dart';
import 'package:neroia_app/features/auth/domain/neroia_user.dart';

extension NeroiaUserModel on User? {
  NeroiaUser? toNeroiaUser() {
    final user = this;

    if (user == null) return null;
    return NeroiaUser(id: user.uid, email: user.email!, name: user.displayName!, photoUrl: user.photoURL);
  }
}

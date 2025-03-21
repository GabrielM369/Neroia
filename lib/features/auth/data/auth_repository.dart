import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/data_sources/firebase/firebase.dart';
import 'package:neroia_app/features/auth/data/models/neroia_user_model.dart';
import 'package:neroia_app/features/auth/domain/neroia_user.dart';
import 'package:rxdart/rxdart.dart';

final authRepository = Provider((ref) => AuthRepository(ref: ref));

class AuthRepository {
  final Ref _ref;
  late final FirebaseAuth _auth = FirebaseAuth.instanceFor(app: _ref.read(firebaseApp));

  AuthRepository({required Ref ref}) : _ref = ref {
    _auth.userChanges().listen((user) => _user.add(user?.toNeroiaUser()));
  }

  final BehaviorSubject<NeroiaUser?> _user = BehaviorSubject();

  Future<void> signIn() async {
    final user = await _auth.signInAnonymously();
    _user.add(user.user?.toNeroiaUser());
  }

  Future<void> signOut() async => await _auth.signOut();
}

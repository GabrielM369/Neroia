import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/data_sources/firebase/firebase.dart';
import 'package:neroia_app/features/auth/data/auth_exception.dart';
import 'package:neroia_app/features/auth/data/models/neroia_user_model.dart';
import 'package:neroia_app/features/auth/domain/neroia_user.dart';
import 'package:rxdart/rxdart.dart';

final authRepository = Provider((ref) => AuthRepository(ref: ref));

class AuthRepository {
  final Ref _ref;
  late final FirebaseAuth _auth = FirebaseAuth.instanceFor(app: _ref.read(firebaseApp));
  late StreamSubscription<User?> _userSubscription;

  AuthRepository({required Ref ref}) : _ref = ref {
    ref.onDispose(() => _userSubscription.cancel());
    _userSubscription = _auth.userChanges().listen((user) => _user.add(user?.toNeroiaUser()));
  }

  final BehaviorSubject<NeroiaUser?> _user = BehaviorSubject();
  Stream<NeroiaUser?> get user => _user.stream;
  NeroiaUser? get userValue => _user.value;

  Future<void> signIn({required String email, required String password}) async =>
      await _auth.signInWithEmailAndPassword(email: email, password: password);

  Future<void> signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e.code);
      throw AuthException.fromCode(e.code);
    }
  }

  Future<void> signOut() async => await _auth.signOut();
}

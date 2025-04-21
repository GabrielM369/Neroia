import 'package:neroia_app/features/auth/auth.dart';
import 'package:neroia_app/features/auth/domain/neroia_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  NeroiaUser? build() {
    final repo = ref.read(authRepository);
    repo.user.skip(1).listen((user) => state = user, onError: (e, s) => state = null);
    return repo.userValue;
  }

  Future<void> signIn({required String email, required String password}) async =>
      await ref.read(authRepository).signIn(email: email, password: password);

  Future<void> signUp({required String email, required String password}) async =>
      await ref.read(authRepository).signUp(email: email, password: password);

  Future<void> logout() async => await ref.read(authRepository).signOut();
}

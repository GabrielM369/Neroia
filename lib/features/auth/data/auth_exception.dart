import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neroia_app/core/localizations/generated/error_localizations.dart';

part 'auth_exception.freezed.dart';

@freezed
sealed class AuthException with _$AuthException {
  const AuthException._();

  const factory AuthException.invalidEmail() = InvalidEmail;
  const factory AuthException.userDisabled() = UserDisabled;
  const factory AuthException.userNotFound() = UserNotFound;
  const factory AuthException.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthException.wrongPassword() = WrongPassword;
  const factory AuthException.tooManyRequests() = TooManyRequests;
  const factory AuthException.unknownError() = UnknownError;

  static AuthException fromCode(String code) => switch (code) {
    'invalid-email' => const InvalidEmail(),
    'user-disabled' => const UserDisabled(),
    'user-not-found' => const UserNotFound(),
    'wrong-password' => const WrongPassword(),
    'email-already-in-use' => const EmailAlreadyInUse(),
    'too-many-requests' => const TooManyRequests(),
    _ => const UnknownError(),
  };

  String message({required ErrorLocalizations error}) => switch (this) {
    InvalidEmail() => error.invalidEmail,
    UserDisabled() => error.userDisabled,
    UserNotFound() => error.userNotFound,
    WrongPassword() => error.wrongPassword,
    EmailAlreadyInUse() => error.emailAlreadyInUse,
    TooManyRequests() => error.tooManyRequests,
    UnknownError() => error.unknownError,
  };
}

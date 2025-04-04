// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'auth_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AuthLocalizationsEn extends AuthLocalizations {
  AuthLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Neroia';

  @override
  String get signInEmail => 'Please sign in with your company email';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm password';

  @override
  String get login => 'Login';

  @override
  String get alreadyHaveAnAccount => 'Already have an account?';

  @override
  String get signUp => 'Sign up';

  @override
  String get newHere => 'New here?';

  @override
  String get confirmEmail => 'Please confirm your email!';
}

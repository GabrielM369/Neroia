import 'auth_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AuthLocalizationsDe extends AuthLocalizations {
  AuthLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get title => 'DecisionOS';

  @override
  String get welcome => 'Wilkommen bei DecisionOS';

  @override
  String get loginWithDeviceId => 'Login mit device ID';

  @override
  String get deviceId => 'Device UUID:';

  @override
  String get loading => 'Lädt...';

  @override
  String get error => 'Fehler:';

  @override
  String get loggingIn => 'Logging in...';

  @override
  String get username => 'Username';

  @override
  String get pleaseEnterUsername => 'Bitte gib deinen Usernamen ein';

  @override
  String get password => 'Password';

  @override
  String get pleaseEnterPassword => 'Bitte gib dein Passwort ein';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get logout => 'Logout';

  @override
  String get getUserAgain => 'User neu laden';
}

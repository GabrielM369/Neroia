import 'auth_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AuthLocalizationsEn extends AuthLocalizations {
  AuthLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'DecisionOS';

  @override
  String get welcome => 'Welcome to DecisionOS';

  @override
  String get loginWithDeviceId => 'Login with device ID';

  @override
  String get deviceId => 'Device UUID:';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error:';

  @override
  String get loggingIn => 'Logging in...';

  @override
  String get username => 'Username';

  @override
  String get pleaseEnterUsername => 'Please enter your username';

  @override
  String get password => 'Password';

  @override
  String get pleaseEnterPassword => 'Please enter your password';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get logout => 'Logout';

  @override
  String get getUserAgain => 'Get User Again';
}

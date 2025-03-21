import 'settings_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class SettingsLocalizationsDe extends SettingsLocalizations {
  SettingsLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get german => 'Deutsch';

  @override
  String get english => 'Englisch';

  @override
  String version(String value) {
    return 'Version: $value';
  }

  @override
  String get account => 'Account';

  @override
  String get personal => 'Persönlich';

  @override
  String get accountUpgrade => 'Account hochstufen';

  @override
  String get addEmail => 'E-Mail hinzufügen';

  @override
  String get language => 'Sprache';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get light => 'hell';

  @override
  String get consent => 'Einwilligung';

  @override
  String get enabled => 'Aktiviert';

  @override
  String get privacyAndSecurity => 'Datenschutz & Sicherheit';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get feedback => 'Feedback';

  @override
  String get logoutAndReset => 'Abmelden & Zurücksetzen';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'settings_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SettingsLocalizationsEn extends SettingsLocalizations {
  SettingsLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get german => 'German';

  @override
  String get english => 'English';

  @override
  String version(String value) {
    return 'Version: $value';
  }

  @override
  String get account => 'Account';

  @override
  String get personal => 'Personal';

  @override
  String get accountUpgrade => 'Account Upgrade';

  @override
  String get addEmail => 'Add Email';

  @override
  String get language => 'Language';

  @override
  String get appearance => 'Appearance';

  @override
  String get light => 'light';

  @override
  String get consent => 'Consent';

  @override
  String get enabled => 'Enabled';

  @override
  String get privacyAndSecurity => 'Privacy & Security';

  @override
  String get notifications => 'Notifications';

  @override
  String get feedback => 'Feedback';

  @override
  String get logoutAndReset => 'Logout & Reset';
}

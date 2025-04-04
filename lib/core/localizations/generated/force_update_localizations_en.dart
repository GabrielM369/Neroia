// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'force_update_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ForceUpdateLocalizationsEn extends ForceUpdateLocalizations {
  ForceUpdateLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'This version is no longer supported!';

  @override
  String get description => 'Unfortunately, we can no longer support your app version. Please update the app to continue.';

  @override
  String get update => 'Update';

  @override
  String get optionalUpdateTitle => 'New version available!';

  @override
  String get optionalUpdateMessage => 'A new version of the app is available. Do you want to update now?';

  @override
  String get later => 'Later';
}

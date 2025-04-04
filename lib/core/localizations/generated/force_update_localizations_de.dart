// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'force_update_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class ForceUpdateLocalizationsDe extends ForceUpdateLocalizations {
  ForceUpdateLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get title => 'Diese Version wird nicht mehr unterstützt!';

  @override
  String get description => 'Leider können wir deine App Version nicht mehr unterstützen. Bitte aktualisiere die App, um fortzufahren.';

  @override
  String get update => 'Aktualisieren';

  @override
  String get optionalUpdateTitle => 'Neue Version verfügbar!';

  @override
  String get optionalUpdateMessage => 'Eine neue Version der App ist verfügbar. Möchtest du jetzt aktualisieren?';

  @override
  String get later => 'Später';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'event_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class EventLocalizationsDe extends EventLocalizations {
  EventLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String startsInMinutes(int time) {
    return 'Startet in $time Minuten';
  }

  @override
  String startsInHours(int time) {
    return 'Startet in $time Stunden';
  }

  @override
  String startsInDays(int time) {
    return 'Startet in $time Tagen';
  }

  @override
  String startsInWeeks(int time) {
    return 'Startet in $time Wochen';
  }

  @override
  String startsInMonths(int time) {
    return 'Startet in $time Monaten';
  }

  @override
  String get startsInNow => 'Startet jetzt';

  @override
  String get going => 'Gehen';

  @override
  String get culture => 'Kultur';

  @override
  String get sports => 'Sport';

  @override
  String get social => 'Soziales';

  @override
  String get currentLocation => 'Aktueller Standort';

  @override
  String get search => 'Suche';

  @override
  String get today => 'Heute';

  @override
  String get tomorrow => 'Morgen';

  @override
  String get upcoming => 'Bevorstehend';

  @override
  String get seeAll => 'Alle anzeigen';
}

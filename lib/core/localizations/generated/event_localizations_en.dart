// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'event_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class EventLocalizationsEn extends EventLocalizations {
  EventLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String startsInMinutes(int time) {
    return 'Starts in $time minutes';
  }

  @override
  String startsInHours(int time) {
    return 'Starts in $time hours';
  }

  @override
  String startsInDays(int time) {
    return 'Starts in $time days';
  }

  @override
  String startsInWeeks(int time) {
    return 'Starts in $time weeks';
  }

  @override
  String startsInMonths(int time) {
    return 'Starts in $time months';
  }

  @override
  String get startsInNow => 'Starts now';

  @override
  String get going => 'Going';
}

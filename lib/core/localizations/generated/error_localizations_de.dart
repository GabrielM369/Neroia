import 'error_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class ErrorLocalizationsDe extends ErrorLocalizations {
  ErrorLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get somethingWentWrong => 'Ups, da ist etwas schiefgelaufen!';

  @override
  String get fieldNotEmpty => 'Dieses Feld darf nicht leer sein';

  @override
  String fieldMaxLengthError(int value) {
    return 'Dieses Feld darf nicht mehr als $value Zeichen enthalten';
  }

  @override
  String get defaultErrorTitle => 'Es ist ein Fehler aufgetreten';

  @override
  String get defaultErrorDescription => 'Leider hat das nicht funktioniert und es ist ein Fehler aufgetreten. Bitte versuche es später erneut.';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get serverError => 'Serverfehler';

  @override
  String get cacheError => 'Cache-Fehler';

  @override
  String get unknownError => 'Unbekannter Fehler';

  @override
  String get ratingCalculationError => 'Berechnung der Bewertung fehlgeschlagen';

  @override
  String get processCreationError => 'Beim erstellen des Prozesses ist ein Fehler aufgetreten!';

  @override
  String get versionError => 'Beim laden der Version ist ein Fehler aufgetreten!';
}

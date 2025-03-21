import 'process_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class ProcessLocalizationsDe extends ProcessLocalizations {
  ProcessLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get endTitle => 'Abspann';

  @override
  String get endSubtitle => 'Wie geht es weiter?';

  @override
  String get endCopy => 'Hier kannst du deinen Prozess abhaken und deine Ergebnisse überprüfen.';

  @override
  String get endButton => 'Übersicht';

  @override
  String get active => 'Aktiv';

  @override
  String get openToDos => 'Offene ToDos';

  @override
  String get completed => 'Abgeschlossen';

  @override
  String created(String date) {
    return 'Erstellt am $date';
  }

  @override
  String author(String id) {
    return 'Autor: $id';
  }

  @override
  String get noProcessFound => 'Kein Prozess gefunden';

  @override
  String get noNeedQuestion => 'Keine Entscheidungsfrage';

  @override
  String get needQuestion => 'Entscheidungsfrage';

  @override
  String get goals => 'Ziele';

  @override
  String get limitations => 'Rahmenbedingungen';

  @override
  String get options => 'Handlungsoptionen';

  @override
  String get rating => 'Bewertung';

  @override
  String get resistance => 'Widerstand';

  @override
  String get fits => 'passt zu';

  @override
  String get notApplicable => 'K.A.';

  @override
  String useInPoints(int value) {
    return '$value Nutzen';
  }

  @override
  String acceptanceInPercent(int value) {
    return '$value% Akzeptanz';
  }

  @override
  String step(int step) {
    return 'Schritt $step';
  }

  @override
  String get ratingResult => 'Bewertungsergebnis';

  @override
  String get use => 'Nutzen';

  @override
  String get ratingResultExplanation => 'Alternativen in absteigender Reihenfolge noch dem Gesamtnutzen in den Zielen [in %].';

  @override
  String get singularRating => 'Einzelbewertung';

  @override
  String get fulfillment => 'Erfüllung';

  @override
  String get rateYourSuggestions => 'Bewerte deine Vorschläge!';

  @override
  String get ratingLimitationExplanation => 'Bewerte die Alternativen einzeln bezüglich der Erfüllung der Rahmenbedingung.';

  @override
  String get ratingGoalExplanation => 'Bewerte die Alternativen einzeln von -5 bis +5 nach der Zielerfüllung.';

  @override
  String get yourRatings => 'Deine Bewertungen';

  @override
  String get defineDesiredEffect => 'Definiere die gewünschte Wirkung!';

  @override
  String get whatDoIWantToAchieve => 'Was will ich erreichen?';

  @override
  String get myGoals => 'Meine Ziele';

  @override
  String get addGoal => 'Ziel hinzufügen';

  @override
  String get homePageTitle => 'Home Page';

  @override
  String get defineYourFrame => 'Steck den Rahmen ab!';

  @override
  String get whatAreTheConditions => 'Was gibt es dabei zu beachten?';

  @override
  String get myLimitations => 'Meine Rahmenbedingungen';

  @override
  String get addLimitation => 'Rahmenbedingung hinzufügen';

  @override
  String get whatDoYouWantToDecide => 'Was möchtest du entscheiden?';

  @override
  String get exampleQuestion => 'Beispielfrage';

  @override
  String get findSuggestions => 'Finde passende Vorschläge!';

  @override
  String get whatAreYourOptions => 'Was sind die Alternativen?';

  @override
  String get myOptions => 'Meine Handlungsoptionen';

  @override
  String get addOption => 'Handlungsoption hinzufügen';

  @override
  String get createProcess => 'Prozess erstellen';

  @override
  String get processTitle => 'Erstelle einen neuen Prozess';

  @override
  String get minimumBenefit => 'Mindestnutzen';

  @override
  String get benefitRating => 'Nutzwert';

  @override
  String get benefitRatingBold => 'Nutz';

  @override
  String get makeYourChoice => 'Triff deine Entscheidung';

  @override
  String get resistanceMeasurement => 'Widerstandsmessung';

  @override
  String get resistanceMeasurementBold => 'Widerstands';

  @override
  String get resistanceMeasurementExplanation => 'Bewerte die Handlungsoptionen einzeln von 0-10 nach deinem Widerstand gegen sie.';

  @override
  String get yourRating => 'Deine Bewertung';

  @override
  String get belowTheThreshold => 'Unter der Schwelle';

  @override
  String get decisionResult => 'Entscheidungsergebnis';

  @override
  String get acceptance => 'Akzeptanzentscheidung';

  @override
  String get acceptanceBold => 'Akzeptanz';

  @override
  String get resistanceResultExplanation => 'Alternativen in absteigender Reihenfolge nach Deiner gemessenen Akzeptanz [in %].';

  @override
  String get editRating => 'Bewertung bearbeiten';

  @override
  String get finishProcess => 'Prozess abschließen';

  @override
  String get chooseAGoalForThisOption => 'Wähle ein Ziel aus, auf das diese Option einzahlt:';

  @override
  String get noGoalsFound => 'Keine Ziele gefunden';

  @override
  String get processListTitle => 'Prozesse';

  @override
  String get emptyProcessList => 'Keine Prozesse vorhanden';

  @override
  String get addProcess => 'Prozess hinzufügen';

  @override
  String get resultGroup => 'Ergebnismenge';

  @override
  String get abstract => 'Abstrahieren';

  @override
  String get moreGeneral => 'Allgemeiner';

  @override
  String get inputLevel => 'Eingabeebene';

  @override
  String get moreSpecific => 'Genauer';

  @override
  String get focus => 'Fokussieren';

  @override
  String get suggestions => 'Vorschläge';

  @override
  String get decisionOn => 'Entscheidung über';

  @override
  String get exitConfirmation => 'Änderungen verwerfen?';

  @override
  String get exitConfirmationMessage => 'Du hast ungesicherte Änderungen. Bist du sicher, dass du zurück willst?';

  @override
  String get exit => 'Verwerfen';

  @override
  String get keep => 'Behalten';

  @override
  String get suggestGoals => 'Ziele vorschlagen';
}

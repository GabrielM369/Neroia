import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'process_localizations_de.dart';
import 'process_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of ProcessLocalizations
/// returned by `ProcessLocalizations.of(context)`.
///
/// Applications need to include `ProcessLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/process_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ProcessLocalizations.localizationsDelegates,
///   supportedLocales: ProcessLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the ProcessLocalizations.supportedLocales
/// property.
abstract class ProcessLocalizations {
  ProcessLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ProcessLocalizations? of(BuildContext context) {
    return Localizations.of<ProcessLocalizations>(context, ProcessLocalizations);
  }

  static const LocalizationsDelegate<ProcessLocalizations> delegate = _ProcessLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en')
  ];

  /// No description provided for @endTitle.
  ///
  /// In de, this message translates to:
  /// **'Abspann'**
  String get endTitle;

  /// No description provided for @endSubtitle.
  ///
  /// In de, this message translates to:
  /// **'Wie geht es weiter?'**
  String get endSubtitle;

  /// No description provided for @endCopy.
  ///
  /// In de, this message translates to:
  /// **'Hier kannst du deinen Prozess abhaken und deine Ergebnisse überprüfen.'**
  String get endCopy;

  /// No description provided for @endButton.
  ///
  /// In de, this message translates to:
  /// **'Übersicht'**
  String get endButton;

  /// No description provided for @active.
  ///
  /// In de, this message translates to:
  /// **'Aktiv'**
  String get active;

  /// No description provided for @openToDos.
  ///
  /// In de, this message translates to:
  /// **'Offene ToDos'**
  String get openToDos;

  /// No description provided for @completed.
  ///
  /// In de, this message translates to:
  /// **'Abgeschlossen'**
  String get completed;

  /// No description provided for @created.
  ///
  /// In de, this message translates to:
  /// **'Erstellt am {date}'**
  String created(String date);

  /// No description provided for @author.
  ///
  /// In de, this message translates to:
  /// **'Autor: {id}'**
  String author(String id);

  /// No description provided for @noProcessFound.
  ///
  /// In de, this message translates to:
  /// **'Kein Prozess gefunden'**
  String get noProcessFound;

  /// No description provided for @noNeedQuestion.
  ///
  /// In de, this message translates to:
  /// **'Keine Entscheidungsfrage'**
  String get noNeedQuestion;

  /// No description provided for @needQuestion.
  ///
  /// In de, this message translates to:
  /// **'Entscheidungsfrage'**
  String get needQuestion;

  /// No description provided for @goals.
  ///
  /// In de, this message translates to:
  /// **'Ziele'**
  String get goals;

  /// No description provided for @limitations.
  ///
  /// In de, this message translates to:
  /// **'Rahmenbedingungen'**
  String get limitations;

  /// No description provided for @options.
  ///
  /// In de, this message translates to:
  /// **'Handlungsoptionen'**
  String get options;

  /// No description provided for @rating.
  ///
  /// In de, this message translates to:
  /// **'Bewertung'**
  String get rating;

  /// No description provided for @resistance.
  ///
  /// In de, this message translates to:
  /// **'Widerstand'**
  String get resistance;

  /// No description provided for @fits.
  ///
  /// In de, this message translates to:
  /// **'passt zu'**
  String get fits;

  /// No description provided for @notApplicable.
  ///
  /// In de, this message translates to:
  /// **'K.A.'**
  String get notApplicable;

  /// No description provided for @useInPoints.
  ///
  /// In de, this message translates to:
  /// **'{value} Nutzen'**
  String useInPoints(int value);

  /// No description provided for @acceptanceInPercent.
  ///
  /// In de, this message translates to:
  /// **'{value}% Akzeptanz'**
  String acceptanceInPercent(int value);

  /// No description provided for @step.
  ///
  /// In de, this message translates to:
  /// **'Schritt {step}'**
  String step(int step);

  /// No description provided for @ratingResult.
  ///
  /// In de, this message translates to:
  /// **'Bewertungsergebnis'**
  String get ratingResult;

  /// No description provided for @use.
  ///
  /// In de, this message translates to:
  /// **'Nutzen'**
  String get use;

  /// No description provided for @ratingResultExplanation.
  ///
  /// In de, this message translates to:
  /// **'Alternativen in absteigender Reihenfolge noch dem Gesamtnutzen in den Zielen [in %].'**
  String get ratingResultExplanation;

  /// No description provided for @singularRating.
  ///
  /// In de, this message translates to:
  /// **'Einzelbewertung'**
  String get singularRating;

  /// No description provided for @fulfillment.
  ///
  /// In de, this message translates to:
  /// **'Erfüllung'**
  String get fulfillment;

  /// No description provided for @rateYourSuggestions.
  ///
  /// In de, this message translates to:
  /// **'Bewerte deine Vorschläge!'**
  String get rateYourSuggestions;

  /// No description provided for @ratingLimitationExplanation.
  ///
  /// In de, this message translates to:
  /// **'Bewerte die Alternativen einzeln bezüglich der Erfüllung der Rahmenbedingung.'**
  String get ratingLimitationExplanation;

  /// No description provided for @ratingGoalExplanation.
  ///
  /// In de, this message translates to:
  /// **'Bewerte die Alternativen einzeln von -5 bis +5 nach der Zielerfüllung.'**
  String get ratingGoalExplanation;

  /// No description provided for @yourRatings.
  ///
  /// In de, this message translates to:
  /// **'Deine Bewertungen'**
  String get yourRatings;

  /// No description provided for @defineDesiredEffect.
  ///
  /// In de, this message translates to:
  /// **'Definiere die gewünschte Wirkung!'**
  String get defineDesiredEffect;

  /// No description provided for @whatDoIWantToAchieve.
  ///
  /// In de, this message translates to:
  /// **'Was will ich erreichen?'**
  String get whatDoIWantToAchieve;

  /// No description provided for @myGoals.
  ///
  /// In de, this message translates to:
  /// **'Meine Ziele'**
  String get myGoals;

  /// No description provided for @addGoal.
  ///
  /// In de, this message translates to:
  /// **'Ziel hinzufügen'**
  String get addGoal;

  /// No description provided for @homePageTitle.
  ///
  /// In de, this message translates to:
  /// **'Home Page'**
  String get homePageTitle;

  /// No description provided for @defineYourFrame.
  ///
  /// In de, this message translates to:
  /// **'Steck den Rahmen ab!'**
  String get defineYourFrame;

  /// No description provided for @whatAreTheConditions.
  ///
  /// In de, this message translates to:
  /// **'Was gibt es dabei zu beachten?'**
  String get whatAreTheConditions;

  /// No description provided for @myLimitations.
  ///
  /// In de, this message translates to:
  /// **'Meine Rahmenbedingungen'**
  String get myLimitations;

  /// No description provided for @addLimitation.
  ///
  /// In de, this message translates to:
  /// **'Rahmenbedingung hinzufügen'**
  String get addLimitation;

  /// No description provided for @whatDoYouWantToDecide.
  ///
  /// In de, this message translates to:
  /// **'Was möchtest du entscheiden?'**
  String get whatDoYouWantToDecide;

  /// No description provided for @exampleQuestion.
  ///
  /// In de, this message translates to:
  /// **'Beispielfrage'**
  String get exampleQuestion;

  /// No description provided for @findSuggestions.
  ///
  /// In de, this message translates to:
  /// **'Finde passende Vorschläge!'**
  String get findSuggestions;

  /// No description provided for @whatAreYourOptions.
  ///
  /// In de, this message translates to:
  /// **'Was sind die Alternativen?'**
  String get whatAreYourOptions;

  /// No description provided for @myOptions.
  ///
  /// In de, this message translates to:
  /// **'Meine Handlungsoptionen'**
  String get myOptions;

  /// No description provided for @addOption.
  ///
  /// In de, this message translates to:
  /// **'Handlungsoption hinzufügen'**
  String get addOption;

  /// No description provided for @createProcess.
  ///
  /// In de, this message translates to:
  /// **'Prozess erstellen'**
  String get createProcess;

  /// No description provided for @processTitle.
  ///
  /// In de, this message translates to:
  /// **'Erstelle einen neuen Prozess'**
  String get processTitle;

  /// No description provided for @minimumBenefit.
  ///
  /// In de, this message translates to:
  /// **'Mindestnutzen'**
  String get minimumBenefit;

  /// No description provided for @benefitRating.
  ///
  /// In de, this message translates to:
  /// **'Nutzwert'**
  String get benefitRating;

  /// No description provided for @benefitRatingBold.
  ///
  /// In de, this message translates to:
  /// **'Nutz'**
  String get benefitRatingBold;

  /// No description provided for @makeYourChoice.
  ///
  /// In de, this message translates to:
  /// **'Triff deine Entscheidung'**
  String get makeYourChoice;

  /// No description provided for @resistanceMeasurement.
  ///
  /// In de, this message translates to:
  /// **'Widerstandsmessung'**
  String get resistanceMeasurement;

  /// No description provided for @resistanceMeasurementBold.
  ///
  /// In de, this message translates to:
  /// **'Widerstands'**
  String get resistanceMeasurementBold;

  /// No description provided for @resistanceMeasurementExplanation.
  ///
  /// In de, this message translates to:
  /// **'Bewerte die Handlungsoptionen einzeln von 0-10 nach deinem Widerstand gegen sie.'**
  String get resistanceMeasurementExplanation;

  /// No description provided for @yourRating.
  ///
  /// In de, this message translates to:
  /// **'Deine Bewertung'**
  String get yourRating;

  /// No description provided for @belowTheThreshold.
  ///
  /// In de, this message translates to:
  /// **'Unter der Schwelle'**
  String get belowTheThreshold;

  /// No description provided for @decisionResult.
  ///
  /// In de, this message translates to:
  /// **'Entscheidungsergebnis'**
  String get decisionResult;

  /// No description provided for @acceptance.
  ///
  /// In de, this message translates to:
  /// **'Akzeptanzentscheidung'**
  String get acceptance;

  /// No description provided for @acceptanceBold.
  ///
  /// In de, this message translates to:
  /// **'Akzeptanz'**
  String get acceptanceBold;

  /// No description provided for @resistanceResultExplanation.
  ///
  /// In de, this message translates to:
  /// **'Alternativen in absteigender Reihenfolge nach Deiner gemessenen Akzeptanz [in %].'**
  String get resistanceResultExplanation;

  /// No description provided for @editRating.
  ///
  /// In de, this message translates to:
  /// **'Bewertung bearbeiten'**
  String get editRating;

  /// No description provided for @finishProcess.
  ///
  /// In de, this message translates to:
  /// **'Prozess abschließen'**
  String get finishProcess;

  /// No description provided for @chooseAGoalForThisOption.
  ///
  /// In de, this message translates to:
  /// **'Wähle ein Ziel aus, auf das diese Option einzahlt:'**
  String get chooseAGoalForThisOption;

  /// No description provided for @noGoalsFound.
  ///
  /// In de, this message translates to:
  /// **'Keine Ziele gefunden'**
  String get noGoalsFound;

  /// No description provided for @processListTitle.
  ///
  /// In de, this message translates to:
  /// **'Prozesse'**
  String get processListTitle;

  /// No description provided for @emptyProcessList.
  ///
  /// In de, this message translates to:
  /// **'Keine Prozesse vorhanden'**
  String get emptyProcessList;

  /// No description provided for @addProcess.
  ///
  /// In de, this message translates to:
  /// **'Prozess hinzufügen'**
  String get addProcess;

  /// No description provided for @resultGroup.
  ///
  /// In de, this message translates to:
  /// **'Ergebnismenge'**
  String get resultGroup;

  /// No description provided for @abstract.
  ///
  /// In de, this message translates to:
  /// **'Abstrahieren'**
  String get abstract;

  /// No description provided for @moreGeneral.
  ///
  /// In de, this message translates to:
  /// **'Allgemeiner'**
  String get moreGeneral;

  /// No description provided for @inputLevel.
  ///
  /// In de, this message translates to:
  /// **'Eingabeebene'**
  String get inputLevel;

  /// No description provided for @moreSpecific.
  ///
  /// In de, this message translates to:
  /// **'Genauer'**
  String get moreSpecific;

  /// No description provided for @focus.
  ///
  /// In de, this message translates to:
  /// **'Fokussieren'**
  String get focus;

  /// No description provided for @suggestions.
  ///
  /// In de, this message translates to:
  /// **'Vorschläge'**
  String get suggestions;

  /// No description provided for @decisionOn.
  ///
  /// In de, this message translates to:
  /// **'Entscheidung über'**
  String get decisionOn;

  /// No description provided for @exitConfirmation.
  ///
  /// In de, this message translates to:
  /// **'Änderungen verwerfen?'**
  String get exitConfirmation;

  /// No description provided for @exitConfirmationMessage.
  ///
  /// In de, this message translates to:
  /// **'Du hast ungesicherte Änderungen. Bist du sicher, dass du zurück willst?'**
  String get exitConfirmationMessage;

  /// No description provided for @exit.
  ///
  /// In de, this message translates to:
  /// **'Verwerfen'**
  String get exit;

  /// No description provided for @keep.
  ///
  /// In de, this message translates to:
  /// **'Behalten'**
  String get keep;

  /// No description provided for @suggestGoals.
  ///
  /// In de, this message translates to:
  /// **'Ziele vorschlagen'**
  String get suggestGoals;
}

class _ProcessLocalizationsDelegate extends LocalizationsDelegate<ProcessLocalizations> {
  const _ProcessLocalizationsDelegate();

  @override
  Future<ProcessLocalizations> load(Locale locale) {
    return SynchronousFuture<ProcessLocalizations>(lookupProcessLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_ProcessLocalizationsDelegate old) => false;
}

ProcessLocalizations lookupProcessLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return ProcessLocalizationsDe();
    case 'en': return ProcessLocalizationsEn();
  }

  throw FlutterError(
    'ProcessLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

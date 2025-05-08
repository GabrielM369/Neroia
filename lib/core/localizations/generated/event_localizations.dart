import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'event_localizations_de.dart';
import 'event_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of EventLocalizations
/// returned by `EventLocalizations.of(context)`.
///
/// Applications need to include `EventLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/event_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: EventLocalizations.localizationsDelegates,
///   supportedLocales: EventLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the EventLocalizations.supportedLocales
/// property.
abstract class EventLocalizations {
  EventLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static EventLocalizations? of(BuildContext context) {
    return Localizations.of<EventLocalizations>(context, EventLocalizations);
  }

  static const LocalizationsDelegate<EventLocalizations> delegate = _EventLocalizationsDelegate();

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

  /// No description provided for @startsInMinutes.
  ///
  /// In de, this message translates to:
  /// **'Startet in {time} Minuten'**
  String startsInMinutes(int time);

  /// No description provided for @startsInHours.
  ///
  /// In de, this message translates to:
  /// **'Startet in {time} Stunden'**
  String startsInHours(int time);

  /// No description provided for @startsInDays.
  ///
  /// In de, this message translates to:
  /// **'Startet in {time} Tagen'**
  String startsInDays(int time);

  /// No description provided for @startsInWeeks.
  ///
  /// In de, this message translates to:
  /// **'Startet in {time} Wochen'**
  String startsInWeeks(int time);

  /// No description provided for @startsInMonths.
  ///
  /// In de, this message translates to:
  /// **'Startet in {time} Monaten'**
  String startsInMonths(int time);

  /// No description provided for @startsInNow.
  ///
  /// In de, this message translates to:
  /// **'Startet jetzt'**
  String get startsInNow;

  /// No description provided for @going.
  ///
  /// In de, this message translates to:
  /// **'Gehen'**
  String get going;

  /// No description provided for @culture.
  ///
  /// In de, this message translates to:
  /// **'Kultur'**
  String get culture;

  /// No description provided for @sports.
  ///
  /// In de, this message translates to:
  /// **'Sport'**
  String get sports;

  /// No description provided for @social.
  ///
  /// In de, this message translates to:
  /// **'Soziales'**
  String get social;

  /// No description provided for @currentLocation.
  ///
  /// In de, this message translates to:
  /// **'Aktueller Standort'**
  String get currentLocation;

  /// No description provided for @search.
  ///
  /// In de, this message translates to:
  /// **'Suche'**
  String get search;

  /// No description provided for @today.
  ///
  /// In de, this message translates to:
  /// **'Heute'**
  String get today;

  /// No description provided for @tomorrow.
  ///
  /// In de, this message translates to:
  /// **'Morgen'**
  String get tomorrow;

  /// No description provided for @upcoming.
  ///
  /// In de, this message translates to:
  /// **'Bevorstehend'**
  String get upcoming;

  /// No description provided for @seeAll.
  ///
  /// In de, this message translates to:
  /// **'Alle anzeigen'**
  String get seeAll;

  /// No description provided for @events.
  ///
  /// In de, this message translates to:
  /// **'Veranstaltungen'**
  String get events;
}

class _EventLocalizationsDelegate extends LocalizationsDelegate<EventLocalizations> {
  const _EventLocalizationsDelegate();

  @override
  Future<EventLocalizations> load(Locale locale) {
    return SynchronousFuture<EventLocalizations>(lookupEventLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_EventLocalizationsDelegate old) => false;
}

EventLocalizations lookupEventLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return EventLocalizationsDe();
    case 'en': return EventLocalizationsEn();
  }

  throw FlutterError(
    'EventLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

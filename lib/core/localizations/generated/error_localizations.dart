import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'error_localizations_de.dart';
import 'error_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of ErrorLocalizations
/// returned by `ErrorLocalizations.of(context)`.
///
/// Applications need to include `ErrorLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/error_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ErrorLocalizations.localizationsDelegates,
///   supportedLocales: ErrorLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the ErrorLocalizations.supportedLocales
/// property.
abstract class ErrorLocalizations {
  ErrorLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ErrorLocalizations? of(BuildContext context) {
    return Localizations.of<ErrorLocalizations>(context, ErrorLocalizations);
  }

  static const LocalizationsDelegate<ErrorLocalizations> delegate = _ErrorLocalizationsDelegate();

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

  /// No description provided for @somethingWentWrong.
  ///
  /// In de, this message translates to:
  /// **'Ups, da ist etwas schiefgelaufen!'**
  String get somethingWentWrong;

  /// No description provided for @fieldNotEmpty.
  ///
  /// In de, this message translates to:
  /// **'Dieses Feld darf nicht leer sein'**
  String get fieldNotEmpty;

  /// No description provided for @fieldMaxLengthError.
  ///
  /// In de, this message translates to:
  /// **'Dieses Feld darf nicht mehr als {value} Zeichen enthalten'**
  String fieldMaxLengthError(int value);

  /// No description provided for @defaultErrorTitle.
  ///
  /// In de, this message translates to:
  /// **'Es ist ein Fehler aufgetreten'**
  String get defaultErrorTitle;

  /// No description provided for @defaultErrorDescription.
  ///
  /// In de, this message translates to:
  /// **'Leider hat das nicht funktioniert und es ist ein Fehler aufgetreten. Bitte versuche es später erneut.'**
  String get defaultErrorDescription;

  /// No description provided for @retry.
  ///
  /// In de, this message translates to:
  /// **'Erneut versuchen'**
  String get retry;

  /// No description provided for @serverError.
  ///
  /// In de, this message translates to:
  /// **'Serverfehler'**
  String get serverError;

  /// No description provided for @cacheError.
  ///
  /// In de, this message translates to:
  /// **'Cache-Fehler'**
  String get cacheError;

  /// No description provided for @unknownError.
  ///
  /// In de, this message translates to:
  /// **'Unbekannter Fehler'**
  String get unknownError;

  /// No description provided for @invalidEmail.
  ///
  /// In de, this message translates to:
  /// **'Die E-Mail-Adresse ist ungültig'**
  String get invalidEmail;

  /// No description provided for @userDisabled.
  ///
  /// In de, this message translates to:
  /// **'Dein Konto ist gesperrt. Bitte kontaktiere den Support.'**
  String get userDisabled;

  /// No description provided for @userNotFound.
  ///
  /// In de, this message translates to:
  /// **'Wir konnte dein Konto nicht finden. Bist du vielleicht neu hier?'**
  String get userNotFound;

  /// No description provided for @wrongPassword.
  ///
  /// In de, this message translates to:
  /// **'Das Passwort ist falsch'**
  String get wrongPassword;

  /// No description provided for @tooManyRequests.
  ///
  /// In de, this message translates to:
  /// **'Wir sind gerade leider zu beliebt. Gib uns ein paar Sekunden und versuche es dann erneut.'**
  String get tooManyRequests;

  /// No description provided for @emailAlreadyInUse.
  ///
  /// In de, this message translates to:
  /// **'Diese E-Mail-Adresse ist bereits in Verwendung. Bitte verwende eine andere oder melde dich an.'**
  String get emailAlreadyInUse;

  /// No description provided for @ratingCalculationError.
  ///
  /// In de, this message translates to:
  /// **'Berechnung der Bewertung fehlgeschlagen'**
  String get ratingCalculationError;

  /// No description provided for @processCreationError.
  ///
  /// In de, this message translates to:
  /// **'Beim erstellen des Prozesses ist ein Fehler aufgetreten!'**
  String get processCreationError;

  /// No description provided for @versionError.
  ///
  /// In de, this message translates to:
  /// **'Beim laden der Version ist ein Fehler aufgetreten!'**
  String get versionError;
}

class _ErrorLocalizationsDelegate extends LocalizationsDelegate<ErrorLocalizations> {
  const _ErrorLocalizationsDelegate();

  @override
  Future<ErrorLocalizations> load(Locale locale) {
    return SynchronousFuture<ErrorLocalizations>(lookupErrorLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_ErrorLocalizationsDelegate old) => false;
}

ErrorLocalizations lookupErrorLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return ErrorLocalizationsDe();
    case 'en': return ErrorLocalizationsEn();
  }

  throw FlutterError(
    'ErrorLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'ai_localizations_de.dart';
import 'ai_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AiLocalizations
/// returned by `AiLocalizations.of(context)`.
///
/// Applications need to include `AiLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/ai_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AiLocalizations.localizationsDelegates,
///   supportedLocales: AiLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AiLocalizations.supportedLocales
/// property.
abstract class AiLocalizations {
  AiLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AiLocalizations? of(BuildContext context) {
    return Localizations.of<AiLocalizations>(context, AiLocalizations);
  }

  static const LocalizationsDelegate<AiLocalizations> delegate = _AiLocalizationsDelegate();

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

  /// No description provided for @newSuggestions.
  ///
  /// In de, this message translates to:
  /// **'Neue Vorschläge'**
  String get newSuggestions;

  /// No description provided for @model.
  ///
  /// In de, this message translates to:
  /// **'Modell'**
  String get model;

  /// No description provided for @gpt4o.
  ///
  /// In de, this message translates to:
  /// **'GPT-4o'**
  String get gpt4o;

  /// No description provided for @claude.
  ///
  /// In de, this message translates to:
  /// **'Claude'**
  String get claude;

  /// No description provided for @claude35.
  ///
  /// In de, this message translates to:
  /// **'Claude 3.5'**
  String get claude35;

  /// No description provided for @claude37.
  ///
  /// In de, this message translates to:
  /// **'Claude 3.7'**
  String get claude37;
}

class _AiLocalizationsDelegate extends LocalizationsDelegate<AiLocalizations> {
  const _AiLocalizationsDelegate();

  @override
  Future<AiLocalizations> load(Locale locale) {
    return SynchronousFuture<AiLocalizations>(lookupAiLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AiLocalizationsDelegate old) => false;
}

AiLocalizations lookupAiLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return AiLocalizationsDe();
    case 'en': return AiLocalizationsEn();
  }

  throw FlutterError(
    'AiLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

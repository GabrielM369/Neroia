import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'chatbot_localizations_de.dart';
import 'chatbot_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of ChatbotLocalizations
/// returned by `ChatbotLocalizations.of(context)`.
///
/// Applications need to include `ChatbotLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/chatbot_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ChatbotLocalizations.localizationsDelegates,
///   supportedLocales: ChatbotLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the ChatbotLocalizations.supportedLocales
/// property.
abstract class ChatbotLocalizations {
  ChatbotLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ChatbotLocalizations? of(BuildContext context) {
    return Localizations.of<ChatbotLocalizations>(context, ChatbotLocalizations);
  }

  static const LocalizationsDelegate<ChatbotLocalizations> delegate = _ChatbotLocalizationsDelegate();

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

  /// No description provided for @pageTitle.
  ///
  /// In de, this message translates to:
  /// **'Bereit, ein Event\nzu planen?'**
  String get pageTitle;

  /// No description provided for @pageSubtitle.
  ///
  /// In de, this message translates to:
  /// **'Von lockeren Treffen bis zu großen Momenten – ich bin für dich da!'**
  String get pageSubtitle;

  /// No description provided for @explore.
  ///
  /// In de, this message translates to:
  /// **'Entdecken'**
  String get explore;

  /// No description provided for @exploreCardDescription.
  ///
  /// In de, this message translates to:
  /// **'Finde lokale Events, die zu deinen Vorlieben passen.'**
  String get exploreCardDescription;

  /// No description provided for @create.
  ///
  /// In de, this message translates to:
  /// **'Erstellen'**
  String get create;

  /// No description provided for @createCardDescription.
  ///
  /// In de, this message translates to:
  /// **'Plane personalisierte Events basierend auf deinen Interessen.'**
  String get createCardDescription;

  /// No description provided for @exploreEvents.
  ///
  /// In de, this message translates to:
  /// **'Veranstaltungen entdecken'**
  String get exploreEvents;

  /// No description provided for @typeSomethingLike.
  ///
  /// In de, this message translates to:
  /// **'Tippe etwas wie:'**
  String get typeSomethingLike;

  /// No description provided for @prompt1.
  ///
  /// In de, this message translates to:
  /// **'Zeig mir kommende Events, an denen meine Kollegen aus der Abteilung teilnehmen 💼'**
  String get prompt1;

  /// No description provided for @prompt2.
  ///
  /// In de, this message translates to:
  /// **'Was sind die beliebtesten Events, die diesen Monat stattfinden 📅'**
  String get prompt2;

  /// No description provided for @prompt3.
  ///
  /// In de, this message translates to:
  /// **'Finde Events, die zu meinen Interessen passen 🎉'**
  String get prompt3;

  /// No description provided for @askMeAnything.
  ///
  /// In de, this message translates to:
  /// **'Frag mich alles...'**
  String get askMeAnything;
}

class _ChatbotLocalizationsDelegate extends LocalizationsDelegate<ChatbotLocalizations> {
  const _ChatbotLocalizationsDelegate();

  @override
  Future<ChatbotLocalizations> load(Locale locale) {
    return SynchronousFuture<ChatbotLocalizations>(lookupChatbotLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_ChatbotLocalizationsDelegate old) => false;
}

ChatbotLocalizations lookupChatbotLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return ChatbotLocalizationsDe();
    case 'en': return ChatbotLocalizationsEn();
  }

  throw FlutterError(
    'ChatbotLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

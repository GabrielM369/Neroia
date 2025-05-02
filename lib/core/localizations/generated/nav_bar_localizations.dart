import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'nav_bar_localizations_de.dart';
import 'nav_bar_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of NavBarLocalizations
/// returned by `NavBarLocalizations.of(context)`.
///
/// Applications need to include `NavBarLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/nav_bar_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: NavBarLocalizations.localizationsDelegates,
///   supportedLocales: NavBarLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the NavBarLocalizations.supportedLocales
/// property.
abstract class NavBarLocalizations {
  NavBarLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static NavBarLocalizations? of(BuildContext context) {
    return Localizations.of<NavBarLocalizations>(context, NavBarLocalizations);
  }

  static const LocalizationsDelegate<NavBarLocalizations> delegate = _NavBarLocalizationsDelegate();

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

  /// No description provided for @home.
  ///
  /// In de, this message translates to:
  /// **'Start'**
  String get home;

  /// No description provided for @messages.
  ///
  /// In de, this message translates to:
  /// **'Chat'**
  String get messages;

  /// No description provided for @saved.
  ///
  /// In de, this message translates to:
  /// **'Favoriten'**
  String get saved;

  /// No description provided for @aiAssistant.
  ///
  /// In de, this message translates to:
  /// **'KI'**
  String get aiAssistant;
}

class _NavBarLocalizationsDelegate extends LocalizationsDelegate<NavBarLocalizations> {
  const _NavBarLocalizationsDelegate();

  @override
  Future<NavBarLocalizations> load(Locale locale) {
    return SynchronousFuture<NavBarLocalizations>(lookupNavBarLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_NavBarLocalizationsDelegate old) => false;
}

NavBarLocalizations lookupNavBarLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return NavBarLocalizationsDe();
    case 'en': return NavBarLocalizationsEn();
  }

  throw FlutterError(
    'NavBarLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

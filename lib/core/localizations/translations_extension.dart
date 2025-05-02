import 'package:flutter/material.dart';
import 'package:neroia_app/core/localizations/generated/ai_localizations.dart';
import 'package:neroia_app/core/localizations/generated/auth_localizations.dart';
import 'package:neroia_app/core/localizations/generated/chatbot_localizations.dart';
import 'package:neroia_app/core/localizations/generated/error_localizations.dart';
import 'package:neroia_app/core/localizations/generated/event_localizations.dart';
import 'package:neroia_app/core/localizations/generated/force_update_localizations.dart';
import 'package:neroia_app/core/localizations/generated/form_localizations.dart';
import 'package:neroia_app/core/localizations/generated/nav_bar_localizations.dart';
import 'package:neroia_app/core/localizations/generated/process_localizations.dart';
import 'package:neroia_app/core/localizations/generated/settings_localizations.dart';

extension TranslationsExtension on BuildContext {
  I18n get i18n => I18n(context: this);
}

class I18n {
  final BuildContext context;

  I18n({required this.context});

  AuthLocalizations get auth => AuthLocalizations.of(context)!;
  ForceUpdateLocalizations get forceUpdate => ForceUpdateLocalizations.of(context)!;
  ErrorLocalizations get error => ErrorLocalizations.of(context)!;
  SettingsLocalizations get settings => SettingsLocalizations.of(context)!;
  ProcessLocalizations get process => ProcessLocalizations.of(context)!;
  FormLocalizations get form => FormLocalizations.of(context)!;
  AiLocalizations get ai => AiLocalizations.of(context)!;
  EventLocalizations get event => EventLocalizations.of(context)!;
  NavBarLocalizations get navBar => NavBarLocalizations.of(context)!;
  ChatbotLocalizations get chatbot => ChatbotLocalizations.of(context)!;
}

const defaultLocale = Locale('en');
const supportedLocales = [defaultLocale, Locale('de')];

const localizationsDelegates = [
  AuthLocalizations.delegate,
  ForceUpdateLocalizations.delegate,
  ErrorLocalizations.delegate,
  SettingsLocalizations.delegate,
  ProcessLocalizations.delegate,
  FormLocalizations.delegate,
  AiLocalizations.delegate,
  EventLocalizations.delegate,
  NavBarLocalizations.delegate,
  ChatbotLocalizations.delegate,
];

extension LocaleTranslation on Locale {
  String toLabel(BuildContext context) => switch (this.languageCode) {
    'de' => context.i18n.settings.german,
    'en' => context.i18n.settings.english,
    _ => context.i18n.settings.english,
  };
}

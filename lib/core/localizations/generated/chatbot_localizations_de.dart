// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'chatbot_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class ChatbotLocalizationsDe extends ChatbotLocalizations {
  ChatbotLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get pageTitle => 'Bereit, ein Event\nzu planen?';

  @override
  String get pageSubtitle => 'Von lockeren Treffen bis zu großen Momenten – ich bin für dich da!';

  @override
  String get explore => 'Entdecken';

  @override
  String get exploreCardDescription => 'Finde lokale Events, die zu deinen Vorlieben passen.';

  @override
  String get create => 'Erstellen';

  @override
  String get createCardDescription => 'Plane personalisierte Events basierend auf deinen Interessen.';

  @override
  String get exploreEvents => 'Veranstaltungen entdecken';

  @override
  String get typeSomethingLike => 'Tippe etwas wie:';

  @override
  String get prompt1 => 'Zeig mir kommende Events, an denen meine Kollegen aus der Abteilung teilnehmen 💼';

  @override
  String get prompt2 => 'Was sind die beliebtesten Events, die diesen Monat stattfinden 📅';

  @override
  String get prompt3 => 'Finde Events, die zu meinen Interessen passen 🎉';

  @override
  String get askMeAnything => 'Frag mich alles...';
}

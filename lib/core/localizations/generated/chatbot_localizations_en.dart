// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'chatbot_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ChatbotLocalizationsEn extends ChatbotLocalizations {
  ChatbotLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get pageTitle => 'Ready to Plan\nan Event?';

  @override
  String get pageSubtitle => 'From casual hangouts to big moments, I’ve got you!';

  @override
  String get explore => 'Explore';

  @override
  String get exploreCardDescription => 'Discover local events that match your preferences.';

  @override
  String get create => 'Create';

  @override
  String get createCardDescription => 'Plan personalized events based on your interests.';

  @override
  String get exploreEvents => 'Explore Events';

  @override
  String get typeSomethingLike => 'Type something like:';

  @override
  String get prompt1 => 'Show me upcoming events that my department colleagues are attending 💼';

  @override
  String get prompt2 => 'What are the top trending events happening this month 📅';

  @override
  String get prompt3 => 'Find events related to my interests 🎉';

  @override
  String get askMeAnything => 'Ask me anything...';
}

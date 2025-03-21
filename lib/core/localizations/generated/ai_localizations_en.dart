import 'ai_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AiLocalizationsEn extends AiLocalizations {
  AiLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get newSuggestions => 'New suggestions';

  @override
  String get model => 'Model';

  @override
  String get gpt4o => 'GPT-4o';

  @override
  String get claude => 'Claude';

  @override
  String get claude35 => 'Claude 3.5';

  @override
  String get claude37 => 'Claude 3.7';
}

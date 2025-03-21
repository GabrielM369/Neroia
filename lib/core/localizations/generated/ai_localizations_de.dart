import 'ai_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AiLocalizationsDe extends AiLocalizations {
  AiLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get newSuggestions => 'Neue Vorschläge';

  @override
  String get model => 'Modell';

  @override
  String get gpt4o => 'GPT-4o';

  @override
  String get claude => 'Claude';

  @override
  String get claude35 => 'Claude 3.5';

  @override
  String get claude37 => 'Claude 3.7';
}

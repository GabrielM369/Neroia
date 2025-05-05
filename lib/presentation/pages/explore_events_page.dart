import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/features/chatbot/presentation/chatbot_text_field.dart';
import 'package:neroia_app/features/chatbot/presentation/messages_list.dart';
import 'package:neroia_app/features/chatbot/presentation/prompt_suggestions.dart';

class ExploreEventsPage extends ConsumerWidget {
  const ExploreEventsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> messages = ref.watch(messagesProvider);

    return Scaffold(
      appBar: AppBar(title: Text(context.i18n.chatbot.exploreEvents)),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: messages.isEmpty
                  ? const PromptSuggestions()
                  : MessagesList(messages: messages),
            ),
            const ChatbotTextField(),
          ],
        ),
      ),
    );
  }
}

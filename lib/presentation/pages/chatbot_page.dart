import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/router/neroia_routes.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:neroia_app/features/chatbot/presentation/chatbot_action_card.dart';

class ChatbotPage extends ConsumerWidget {
  const ChatbotPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
      title: Text(context.i18n.navBar.aiAssistant),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${context.i18n.chatbot.pageTitle} 🚀', style: ref.textStyle.headline, textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('✨ ${context.i18n.chatbot.pageSubtitle} ✨', style: ref.textStyle.subtitle, textAlign: TextAlign.center),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ChatbotActionCard(
                    imagePath: 'assets/people.png',
                    title: context.i18n.chatbot.explore,
                    description: context.i18n.chatbot.exploreCardDescription,
                    onTap: () async => const ExploreEventsRoute().push(context),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ChatbotActionCard(
                    imagePath: 'assets/calendar.png',
                    title: context.i18n.chatbot.create,
                    description: context.i18n.chatbot.createCardDescription,
                    onTap: () async => const ExploreEventsRoute().push(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

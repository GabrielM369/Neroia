import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:neroia_app/features/chatbot/presentation/messages_list.dart';

final StateProvider<List<String>> messagesProvider = StateProvider<List<String>>((Ref<List<String>> ref) => <String>[]);

class PromptSuggestions extends ConsumerWidget {
  const PromptSuggestions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> prompts = <String>[
      context.i18n.chatbot.prompt1,
      context.i18n.chatbot.prompt2,
      context.i18n.chatbot.prompt3,
    ];

    final StateController<List<String>> messagesNotifier = ref.read(messagesProvider.notifier);
    final StateController<bool> loadingNotifier = ref.read(isLoadingProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            context.i18n.chatbot.typeSomethingLike,
            style: ref.textStyle.title.copyWith(
              color: ref.colors.darkGrey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ...List<Widget>.generate(prompts.length, (int index) {
            return GestureDetector(
              onTap: () async {
                messagesNotifier.state = <String>[
                  ...messagesNotifier.state,
                  prompts.first,
                ];
                loadingNotifier.state = true;

                await Future<void>.delayed(const Duration(seconds: 2));

                messagesNotifier.state = <String>[
                  ...messagesNotifier.state,
                  'For this week, your colleagues from the Mobile Chapter are attending 2 different event types. Here’s a list below:',
                ];
                loadingNotifier.state = false;
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: ref.colors.lightGrey.withValues(alpha: .2),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        prompts[index],
                        style: ref.textStyle.cardDescription,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

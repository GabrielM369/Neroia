import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/features/chatbot/presentation/event_suggestions_list.dart';
import 'package:neroia_app/features/chatbot/presentation/loading_indicator.dart';
import 'package:neroia_app/features/chatbot/presentation/message_bubble.dart';

final isLoadingProvider = StateProvider<bool>((ref) => false);

class MessagesList extends ConsumerWidget {
  final List<String> messages;

  const MessagesList({Key? key, required this.messages}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(isLoadingProvider);

    return ListView.builder(
      itemCount: isLoading ? messages.length + 1 : messages.length,
      itemBuilder: (context, index) {
        if (isLoading && index == messages.length) {
          return const LoadingIndicator();
        }

        final isBot = index.isOdd;

        return Column(
          crossAxisAlignment:
          isBot ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            MessageBubble(
              message: messages[index],
              isBot: isBot,
            ),
            if (isBot && index == messages.length - 1)
              const EventSuggestionsList(),
          ],
        );
      },
    );
  }
}

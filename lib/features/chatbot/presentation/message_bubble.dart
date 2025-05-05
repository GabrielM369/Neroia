import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:neroia_app/features/chatbot/presentation/chatbot_feedback_icons.dart';

class MessageBubble extends ConsumerWidget {
  final String message;
  final bool isBot;

  const MessageBubble({
    required this.message,
    required this.isBot,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment:
        isBot ? MainAxisAlignment.start : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: isBot ? ref.colors.lightGrey.withValues(alpha: .2) : ref.colors.primary,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
                message,
                style: ref.textStyle.textField.copyWith(
                  color: isBot ? null : ref.colors.background,
                ),
              ),
            ),
          ),
          if (isBot) ... [
            const SizedBox(width: 8.0),
            ChatbotFeedbackIcons(),
          ]
        ],
      ),
    );
  }
}

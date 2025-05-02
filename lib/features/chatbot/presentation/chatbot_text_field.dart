import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/theme/colors.dart';

final StateProvider<bool> isTextFieldFocusedProvider = StateProvider<bool>((Ref<bool> ref) => false);

class ChatbotTextField extends ConsumerStatefulWidget {
  const ChatbotTextField({super.key});

  @override
  ConsumerState<ChatbotTextField> createState() => _ChatbotTextFieldState();
}

class _ChatbotTextFieldState extends ConsumerState<ChatbotTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      ref.read(isTextFieldFocusedProvider.notifier).state = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isFocused = ref.watch(isTextFieldFocusedProvider);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 16, right: 16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              focusNode: _focusNode,
              decoration: InputDecoration(
                hintText: context.i18n.chatbot.askMeAnything,
                fillColor: isFocused
                    ? ref.colors.primary.withValues(alpha: 0.1)
                    : ref.colors.lightGrey.withValues(alpha: 0.4),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: ref.colors.primary,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              padding: const EdgeInsets.only(left: 3),
              icon: SvgPicture.asset(
                'assets/send.svg',
                colorFilter: ColorFilter.mode(
                  ref.colors.background,
                  BlendMode.dstIn,
                ),
                width: 20,
                height: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

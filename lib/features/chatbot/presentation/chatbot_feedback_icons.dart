import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ChatbotFeedbackIcons extends StatelessWidget {
  const ChatbotFeedbackIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Icon(HugeIcons.strokeRoundedThumbsUp, size: 22),
        const SizedBox(height: 8),
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(3.1416),
          child: const Icon(HugeIcons.strokeRoundedThumbsDown, size: 22),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';

class ChatbotActionCard extends ConsumerWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onTap;

  const ChatbotActionCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: ref.colors.lightGrey.withValues(alpha: .2),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ref.colors.primary,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(imagePath),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(title, style: ref.textStyle.cardText),
              ),
              Text(description, style: ref.textStyle.cardDescription),
            ],
          ),
        ),
      ),
    );
  }
}

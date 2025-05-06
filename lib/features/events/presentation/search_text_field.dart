import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/theme/colors.dart';

class
SearchTextField extends ConsumerWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: context.i18n.event.search,
          hintStyle: TextStyle(color: ref.colors.darkGrey),
          prefixIcon: Icon(Icons.search, color: ref.colors.darkGrey),
          filled: true,
          fillColor: ref.colors.primary.withValues(alpha: 0.2),
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
        style: TextStyle(color: ref.colors.background),
      ),
    );
  }
}

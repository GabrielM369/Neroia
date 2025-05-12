import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/router/neroia_routes.dart';
import 'package:neroia_app/core/theme/colors.dart';

class SearchTextField extends ConsumerWidget {
  final bool autofocus;

  const SearchTextField({this.autofocus = false, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextField textField = TextField(
      autofocus: autofocus,
      decoration: InputDecoration(
        fillColor: ref.colors.primary.withAlpha(25),
        hintText: context.i18n.event.search,
        prefixIcon: Icon(Icons.search, color: ref.colors.darkGrey),
      ),
    );

    if (!autofocus) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GestureDetector(
          onTap: () async => const SearchEventsRoute().push(context),
          child: AbsorbPointer(child: textField),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: textField,
    );
  }
}

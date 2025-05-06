import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';

class CategoriesTab extends ConsumerWidget {
  const CategoriesTab({super.key});

  final int selectedIndex = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> tabs = <String>[context.i18n.event.culture, context.i18n.event.sports, context.i18n.event.social];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 16),
          ...List<Widget>.generate(
            tabs.length,
                (int index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.only(right: 10),
              width: MediaQuery.sizeOf(context).width / 3.5,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? ref.colors.primary
                    : ref.colors.background,
                border: Border.all(color: ref.colors.lightGrey),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                tabs[index],
                textAlign: TextAlign.center,
                style: ref.textStyle.cardText.copyWith(
                  fontSize: 14,
                  color: selectedIndex == index ? ref.colors.background : null,
                ),
              ),
            ),
          ),
          const SizedBox(width: 6),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:neroia_app/core/extensions/translation_extensions.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:neroia_app/features/events/domain/event.dart';
import 'package:neroia_app/features/widgets/gradient_mask.dart';

// TODO: remove this class/file
class EventCard extends ConsumerWidget {
  final Event event;
  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image:
            event.imageUrls.isNotEmpty
                ? DecorationImage(image: NetworkImage(event.imageUrls.first), fit: BoxFit.cover)
                : null,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 32.0,
        children: [
          _OpaqueContainer(
            padding: EdgeInsets.all(8.0),
            child: HugeIcon(icon: HugeIcons.strokeRoundedFavourite, size: 30, color: ref.colors.primary),
          ),
          _OpaqueContainer(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4.0,
                    children: [
                      _IconWithText(icon: HugeIcons.strokeRoundedPaintBoard, text: event.name, bold: true),
                      Row(
                        spacing: 4.0,
                        children: [
                          Flexible(
                            child: _IconWithText(
                              icon: HugeIcons.strokeRoundedLocation01,
                              text: event.location.toString(),
                            ),
                          ),
                          Flexible(
                            child: _IconWithText(
                              icon: HugeIcons.strokeRoundedTime02,
                              text: context.i18n.event.startsIn(event.startDate.difference(DateTime.now())),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (event.userIsAttending)
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(HugeIcons.strokeRoundedMessage01, size: 35, color: ref.colors.primary),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _IconWithText extends ConsumerWidget {
  final IconData icon;
  final String text;
  final bool bold;

  const _IconWithText({required this.icon, required this.text, this.bold = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4.0,
      children: [
        GradientMask(child: HugeIcon(icon: icon, size: 20.0, color: ref.colors.text)),
        Flexible(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: ref.textStyle.cardText.copyWith(fontWeight: bold ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ],
    );
  }
}

class _OpaqueContainer extends ConsumerWidget {
  final Widget child;
  final EdgeInsets padding;
  const _OpaqueContainer({required this.child, this.padding = const EdgeInsets.all(8.0)});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: ref.colors.background.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: padding,
      child: child,
    );
  }
}

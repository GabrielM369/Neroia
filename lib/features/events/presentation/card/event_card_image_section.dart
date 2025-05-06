import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';

class EventCardImageSection extends ConsumerWidget {
  final String imageUrl;
  final String eventDate;
  final bool isAttending;

  const EventCardImageSection({
    required this.imageUrl,
    required this.eventDate,
    this.isAttending = false,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildDateBadge(ref),
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _buildIconBadge(
                      ref,
                      icon: HugeIcons.strokeRoundedFavourite,
                    ),
                    const Spacer(),
                    Visibility(
                      visible: isAttending,
                      child: _buildIconBadge(
                        ref,
                        icon: HugeIcons.strokeRoundedBubbleChat,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateBadge(WidgetRef ref) {
    final List<String> parts = eventDate.split('\n');
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: ref.colors.background.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          children: <InlineSpan>[
            TextSpan(
              text: parts.first,
              style: ref.textStyle.cardDescription.copyWith(
                fontWeight: FontWeight.w900,
                color: ref.colors.primary,
              ),
            ),
            TextSpan(
              text: '\n${parts.last}',
              style: ref.textStyle.cardDescription.copyWith(
                fontWeight: FontWeight.w600,
                color: ref.colors.primary,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildIconBadge(WidgetRef ref, {required IconData icon}) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: ref.colors.background.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Icon(icon, size: 26, color: ref.colors.primary),
    );
  }
}

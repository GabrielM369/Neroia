import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';

class EventCardDetails extends ConsumerWidget {
  final String eventName;
  final String location;

  const EventCardDetails({
    required this.eventName,
    required this.location,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          eventName,
          style: ref.textStyle.cardDescription.copyWith(fontWeight: FontWeight.bold),
        ),
        /*Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: _AttendeesRow(ref),
        ),*/
        _LocationRow(ref, location),
      ],
    );
  }
}

Widget _AttendeesRow(BuildContext context, WidgetRef ref) {
  return Row(
    children: [
      SizedBox(
        height: 32,
        width: 60,
        child: Stack(
          clipBehavior: Clip.none,
          children: List.generate(3, (index) {
            return Positioned(
              left: index * 20.0,
              child: CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage('https://i.pravatar.cc/300?img=${index + 1}'),
              ),
            );
          }),
        ),
      ),
      const SizedBox(width: 20),
      Text(
        '+20 ${context.i18n.event.going}',
        style: ref.textStyle.cardText.copyWith(color: ref.colors.primary),
      ),
    ],
  );
}

Widget _LocationRow(WidgetRef ref, String location) {
  return Row(
    children: [
      const Icon(Icons.location_on_rounded),
      const SizedBox(width: 4),
      Expanded(
        child: Text(
          location,
          style: ref.textStyle.cardText.copyWith(color: ref.colors.darkGrey),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}

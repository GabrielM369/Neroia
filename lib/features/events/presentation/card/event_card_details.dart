import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';

class EventCardDetails extends ConsumerWidget {
  final String eventName;
  final String location;
  final List<String> participants;

  const EventCardDetails({required this.eventName, required this.location, this.participants = const <String>[], super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          eventName,
          style: ref.textStyle.cardDescription.copyWith(fontWeight: FontWeight.bold),
        ),
        Visibility(
          visible: participants.isNotEmpty,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: _buildAttendeesRow(context, ref),
          ),
        ),
        _buildLocationRow(ref, location),
      ],
    );
  }
}

Widget _buildAttendeesRow(BuildContext context, WidgetRef ref) {
  return Row(
    children: <Widget>[
      SizedBox(
        height: 32,
        width: 60,
        child: Stack(
          clipBehavior: Clip.none,
          children: List.generate(3, (int index) {
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

Widget _buildLocationRow(WidgetRef ref, String location) {
  return Row(
    children: <Widget>[
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

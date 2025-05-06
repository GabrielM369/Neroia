import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:neroia_app/features/events/presentation/card/new_event_card.dart';
import '../../../presentation/pages/home_page.dart';

class EventsSection extends ConsumerWidget {
  final String title;
  final List<EventModel> events;

  const EventsSection({
    required this.title, required this.events, super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 8),
          child: Row(
            children: <Widget>[
              Text(title, style: ref.textStyle.title),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(context.i18n.event.seeAll, style: ref.textStyle.cardDescription),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: events.length + 2,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0 || index == events.length + 1) {
                return const SizedBox(width: 16);
              }

              final EventModel event = events[index - 1];

              return Padding(
                padding: EdgeInsets.only(right: index == events.length ? 0 : 10),
                child: EventCard(
                  imageUrl: event.imageUrl,
                  eventName: event.title,
                  location: event.location,
                  eventDate: '${event.date}\n${event.month}',
                  isAttending: true,
                  participants: const <String>['lorem'],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

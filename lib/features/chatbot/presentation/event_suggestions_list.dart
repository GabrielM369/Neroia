import 'package:flutter/material.dart';
import 'package:neroia_app/features/events/presentation/card/new_event_card.dart';

class EventSuggestionsList extends StatelessWidget {
  const EventSuggestionsList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            if (index == 0 || index == 3) {
              return const SizedBox(width: 11.0);
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: SizedBox(
                width: screenWidth * 0.7,
                child: const EventCard(
                  imageUrl: 'assets/icon.jpg',
                  eventName: 'Flutter Dev Meetup',
                  location: 'San Francisco, CA',
                  eventDate: '18\nJune',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/features/events/presentation/card/event_list_card.dart';
import 'package:neroia_app/features/widgets/gradient_background.dart';

class SeeAllEventsPage extends StatelessWidget {
  const SeeAllEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.i18n.event.events),
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 8),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: GradientBackground(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          children: const <Widget>[
            EventListCard(
              imagePath: 'assets/icon.jpg',
              date: 'Wed, Apr 28 • 5:30 PM',
              title: 'Jo Malone London’s Mother’s Day Presents',
              location: 'Radius Gallery • Santa Cruz, CA',
            ),
            EventListCard(
              imagePath: 'assets/icon.jpg',
              date: 'Sat, May 1 • 2:00 PM',
              title: 'A Virtual Evening of Smooth Jazz',
              location: 'Lot 13 • Oakland, CA',
            ),
            EventListCard(
              imagePath: 'assets/icon.jpg',
              date: 'Sat, Apr 24 • 1:30 PM',
              title: 'Women\'s Leadership Conference 2021',
              location: '53 Bush St • San Francisco, CA',
            ),
            EventListCard(
              imagePath: 'assets/icon.jpg',
              date: 'Fri, Apr 23 • 6:00 PM',
              title: 'International Kids Safe Parents Night Out',
              location: 'Lot 13 • Oakland, CA',
            ),
            EventListCard(
              imagePath: 'assets/icon.jpg',
              date: 'Mon, Jun 21 • 10:00 PM',
              title: 'Collectivity Plays the Music of Jimi',
              location: 'Longboard Margarita Bar',
            ),
            EventListCard(
              imagePath: 'assets/icon.jpg',
              date: 'Sun, Apr 25 • 10:15 AM',
              title: 'International Gala Music Festival',
              location: '36 Guild Street London, UK',
            ),
            EventListCard(
              imagePath: 'assets/icon.jpg',
              date: 'Sun, Apr 25 • 10:15 AM',
              title: 'International Gala Music Festival',
              location: '36 Guild Street London, UK',
            ),
          ],
        ),
      ),
    );
  }
}

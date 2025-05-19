import 'package:flutter/material.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/features/events/presentation/categories_tab.dart';
import 'package:neroia_app/features/events/presentation/events_section.dart';
import 'package:neroia_app/features/events/presentation/header_section.dart';
import 'package:neroia_app/features/events/presentation/search_text_field.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<EventModel> dummyEvents = <EventModel>[
    EventModel(
      title: 'International Band Music Concert',
      imageUrl: 'assets/icon.jpg',
      date: '10',
      month: 'June',
      going: 20,
      location: '15 min away',
    ),
    EventModel(
      title: 'Jo Malone London Event',
      imageUrl: 'assets/icon.jpg',
      date: '10',
      month: 'June',
      going: 20,
      location: 'Radius Gallery',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const HeaderSection(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: CategoriesTab(),
              ),
              const SearchTextField(),
              const SizedBox(height: 10),
              EventsSection(title: context.i18n.event.today, events: dummyEvents),
              EventsSection(title: context.i18n.event.tomorrow, events: dummyEvents),
              EventsSection(title: context.i18n.event.thisWeek, events: dummyEvents),
              EventsSection(title: context.i18n.event.upcoming, events: dummyEvents),
            ],
          ),
        ),
      ),
    );
  }
}

class EventModel {
  final String title;
  final String imageUrl;
  final String date;
  final String month;
  final int going;
  final String location;

  EventModel({
    required this.title,
    required this.imageUrl,
    required this.date,
    required this.month,
    required this.going,
    required this.location,
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/features/events/presentation/event_card_details.dart';
import 'package:neroia_app/features/events/presentation/event_card_image_section.dart';

class EventCard extends ConsumerWidget {
  final String imageUrl;
  final String eventName;
  final String location;
  final String eventDate;

  const EventCard({
    required this.imageUrl,
    required this.eventName,
    required this.location,
    required this.eventDate,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 1.4,
      child: Card(
        elevation: 0.5,
        color: ref.colors.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EventCardImageSection(imageUrl: imageUrl, eventDate: eventDate),
              const SizedBox(height: 10),
              EventCardDetails(eventName: eventName, location: location),
            ],
          ),
        ),
      ),
    );
  }
}

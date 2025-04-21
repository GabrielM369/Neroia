import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {
  final String id;
  final String name;
  final bool userIsAttending;
  final String description;
  final DateTime startDate;
  final DateTime? endDate;
  final GeoPoint location;
  final List<String> imageUrls;

  const Event({
    required this.id,
    required this.name,
    required this.userIsAttending,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.location,
    required this.imageUrls,
  });
}

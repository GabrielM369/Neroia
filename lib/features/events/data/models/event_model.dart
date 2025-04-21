import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:neroia_app/features/events/domain/event.dart';

abstract class EventModel {
  static Event toEntity(Map<String, dynamic> json) => Event(
    id: json['id'] as String,
    name: json['name'] as String,
    userIsAttending: false,
    description: '',
    startDate: (json['start'] as Timestamp).toDate(),
    endDate: (json['end'] as Timestamp?)?.toDate(),
    location: json['venues'][0]['location'],
    imageUrls: json['imageUrls'].cast<String>(),
  );
}

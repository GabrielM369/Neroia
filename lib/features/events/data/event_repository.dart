import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/data_sources/firebase/firebase.dart';
import 'package:neroia_app/features/events/data/models/event_model.dart';
import 'package:neroia_app/features/events/domain/event.dart';

final eventRepository = Provider((ref) => EventRepository(firestore: ref.read(firestore)));

class EventRepository {
  final FirebaseFirestore _firestore;

  EventRepository({required FirebaseFirestore firestore}) : _firestore = firestore;

  Stream<List<Event>> getEvents() => _firestore
      .collection(FirebaseCollections.events)
      .limit(20)
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => EventModel.toEntity({'id': doc.id, ...doc.data()})).toList());
}

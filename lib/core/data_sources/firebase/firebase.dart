import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/firebase_options.dart';

late Provider<FirebaseApp> firebaseApp;

Future<void> initFirebase() async {
  final app = await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  firebaseApp = Provider((ref) => app);
}

abstract class FirebaseCollections {
  static const String users = 'users';
}

final firestore = Provider((ref) => FirebaseFirestore.instanceFor(app: ref.read(firebaseApp)));

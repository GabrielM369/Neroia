import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventsPage extends ConsumerWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.blue, // ref.colors.background,
      body: Container(child: Center(child: Text('Events Page', style: TextStyle(fontSize: 24, color: Colors.white)))),
    );
  }
}

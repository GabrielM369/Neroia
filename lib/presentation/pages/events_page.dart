import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/features/events/presentation/events_list.dart';
import 'package:neroia_app/features/profile/presentation/profile_picture_button.dart';

// TODO: remove this file
class EventsPage extends ConsumerWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(children: [ProfilePictureButton()]),
              Container(child: Center(child: Text('Events Page', style: TextStyle(fontSize: 24, color: Colors.white)))),
              Expanded(child: EventsList()),
            ],
          ),
        ),
      ),
    );
  }
}

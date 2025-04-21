import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:neroia_app/features/events/presentation/event_card.dart';
import 'package:neroia_app/features/events/presentation/events_list_notifier.dart';

class EventsList extends ConsumerWidget {
  const EventsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(eventsListNotifierProvider);

    return state.when(
      data:
          (events) => ListView.separated(
            padding: EdgeInsets.zero,
            separatorBuilder: (_, __) => const SizedBox(height: 16.0),
            itemCount: events.length,
            itemBuilder: (_, index) => EventCard(event: events[index]),
          ),
      // TODO replace with shimmer?
      loading: () => const Center(child: CupertinoActivityIndicator()),
      // TODO talk to gabriel about error handling
      error: (e, s) => Center(child: Text('Error loading events: $e', style: ref.textStyle.subHeadline)),
    );
  }
}

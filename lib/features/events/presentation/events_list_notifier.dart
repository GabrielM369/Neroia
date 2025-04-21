import 'package:neroia_app/core/extensions/stream_extensions.dart';
import 'package:neroia_app/features/events/data/event_repository.dart';
import 'package:neroia_app/features/events/domain/event.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'events_list_notifier.g.dart';

@riverpod
class EventsListNotifier extends _$EventsListNotifier {
  @override
  Future<List<Event>> build() async =>
      ref.read(eventRepository).getEvents().toNotifierState((s) => state = s, loadingIfNull: true);

  void refresh() => ref.invalidateSelf();
}

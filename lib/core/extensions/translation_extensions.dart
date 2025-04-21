import 'package:neroia_app/core/localizations/generated/event_localizations.dart';

extension DurationFormatter on EventLocalizations {
  String startsIn(Duration duration) {
    if (duration.inDays > 1) {
      return startsInDays(duration.inDays);
    } else if (duration.inHours > 1) {
      return startsInHours(duration.inHours);
    } else if (duration.inMinutes > 1) {
      return startsInMinutes(duration.inMinutes);
    } else {
      return startsInNow;
    }
  }
}

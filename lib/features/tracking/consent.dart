import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neroia_app/core/config/environment_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:usercentrics_sdk/usercentrics_sdk.dart';

part 'consent.freezed.dart';
part 'consent.g.dart';

@Riverpod(keepAlive: true)
class Consent extends _$Consent {
  ConsentState build() {
    Usercentrics.initialize(settingsId: userCentricsId, loggerLevel: UsercentricsLoggerLevel.debug);
    return ConsentState.none;
  }

  Future<void> askForConsentIfNeeded() async {
    final status = await Usercentrics.status;

    final consents = status.shouldCollectConsent ? (await Usercentrics.showFirstLayer())?.consents : status.consents;

    state = ConsentState(
      marketing: consents?.any((c) => c.templateId == 'marketing') ?? false,
      statistics: consents?.any((c) => c.templateId == 'statistics') ?? false,
      necessary: consents?.any((c) => c.templateId == 'necessary') ?? false,
    );
  }
}

@freezed
class ConsentState with _$ConsentState {
  final bool marketing;
  final bool statistics;
  final bool necessary;

  const ConsentState({required this.marketing, required this.statistics, required this.necessary});

  static ConsentState get none => ConsentState(marketing: false, statistics: false, necessary: false);
}

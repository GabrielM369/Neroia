import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neroia_app/core/config/environment_config.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'consent.dart';

part 'tracking.freezed.dart';
part 'tracking.g.dart';

@Riverpod(keepAlive: true)
class Tracking extends _$Tracking {
  List<RouteObserver> get observers => [PosthogObserver()];
  final Posthog _postHog = Posthog();

  TrackingState build() {
    ref.watch(consentProvider).statistics ? _postHog.enable() : _postHog.disable();

    return TrackingState(observers: []);
  }

  Future<void> init() async {
    final config = PostHogConfig(postHogKey);
    config.debug = true;
    config.captureApplicationLifecycleEvents = false;
    config.host = 'https://us.i.posthog.com';
    config.sessionReplay = true;
    config.sessionReplayConfig.maskAllTexts = false;
    config.sessionReplayConfig.maskAllImages = false;
    config.sessionReplayConfig.throttleDelay = const Duration(milliseconds: 1000);
    config.flushAt = 1;
    await _postHog.setup(config);
  }

  Future<void> trackScreen() => _postHog.screen(screenName: 'SplashScreen');
}

@freezed
class TrackingState with _$TrackingState {
  final List<RouteObserver> observers;
  const TrackingState({required this.observers});
}

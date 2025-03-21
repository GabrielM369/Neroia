import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/config/environment_config.dart';
import 'package:neroia_app/core/data_sources/firebase/firebase.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/features/tracking/consent.dart';
import 'package:neroia_app/presentation/pages/error_page.dart';
import 'package:neroia_app/presentation/pages/splash_screen.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'core/data_sources/reporting/logger.dart';
import 'core/router/app_router.dart';
import 'core/theme/theme.dart';
import 'features/auth/data/auth_repository.dart';
import 'features/tracking/tracking.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initFirebase();

  await SentryFlutter.init((options) {
    options.dsn = sentryDsn;

    // TODO Ask Gabriel for judgement call on data privacy of this
    options.sendDefaultPii = false;
    // We recommend adjusting this value in production.
    options.tracesSampleRate = 1.0;
    options.experimental.replay.sessionSampleRate = 1.0;
    options.experimental.replay.onErrorSampleRate = 1.0;
    options.debug = false;
  }, appRunner: () => runNeroia());
}

void runNeroia() => runApp(SentryWidget(child: ProviderScope(child: const Initialization())));

final initialisationProvider = FutureProvider((ref) async {
  AppLogger.setMinimumLogLevel(ref.read(envProvider).logLevel);
  await ref.read(trackingProvider.notifier).init();
  return ref.read(authRepository).signIn();
});

class Initialization extends ConsumerWidget {
  const Initialization({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(initialisationProvider);
    ref.read(trackingProvider.notifier).trackScreen();

    return PostHogWidget(
      child: state.when(
        data: (_) => Neroia(),
        loading: () => SplashScreen(),
        error: (error, stack) => ErrorPage(error: error.toString(), onRetry: () => ref.refresh(initialisationProvider)),
      ),
    );
  }
}

class Neroia extends ConsumerStatefulWidget {
  const Neroia({super.key});

  @override
  ConsumerState createState() => _NeroiaState();
}

class _NeroiaState extends ConsumerState<Neroia> {
  @override
  void initState() {
    super.initState();
    ref.read(consentProvider.notifier).askForConsentIfNeeded();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);

    return PostHogWidget(
      child: MaterialApp.router(
        onGenerateTitle: (context) => context.i18n.auth.title,
        theme: ref.read(lightThemeProvider),
        darkTheme: ref.read(darkThemeProvider),
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          ...localizationsDelegates,
        ],
        supportedLocales: supportedLocales,
        localeResolutionCallback: (locale, supportedLocales) {
          if (locale == null) return defaultLocale;

          return supportedLocales.firstWhereOrNull(
                (supportedLocale) => supportedLocale.languageCode == locale.languageCode,
              ) ??
              defaultLocale;
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/data_sources/reporting/logger.dart';
import 'package:neroia_app/core/router/neroia_routes.dart';
import 'package:neroia_app/features/auth/data/auth_repository.dart';
import 'package:neroia_app/main.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => init());
  }

  Future<void> init() async {
    try {
      await ref.read(initialisationProvider.future);
      AppLogger.log('Main', 'Initialization completed', level: LogLevel.info);

      final user = await ref.read(authRepository).user.first;
      user != null ? HomeRoute().pushReplacement(context) : SignUpRoute().pushReplacement(context);
    } catch (e, s) {
      AppLogger.log('Main', 'Error during initialization', level: LogLevel.error, error: e, stackTrace: s);
      ErrorRoute(error: e.toString()).pushReplacement(context);
    } finally {
      FlutterNativeSplash.remove();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO reimplement splash screen here
    return Container();
  }
}

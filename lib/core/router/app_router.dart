import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:neroia_app/core/router/neroia_routes.dart';
import 'package:neroia_app/presentation/pages/error_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final routeObservers = <NavigatorObserver>[];

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: '/',
    observers: routeObservers,
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
    errorBuilder: (context, state) => ErrorPage(error: state.error?.message),
  );
}
